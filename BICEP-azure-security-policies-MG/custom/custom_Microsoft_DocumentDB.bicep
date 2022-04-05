targetScope = 'managementGroup'

resource iddd05c265_ea39_4599_ad8b_038b3b3bfe25 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'iddd05c265-ea39-4599-ad8b-038b3b3bfe25'
  properties: {
    displayName: 'Audit Cosmos DB that does not have Auto Failover enabled'
    description: 'This policy audits if \'Automatic FailOver\' is disabled for Cosmos DB. If not enabled, you will be out of compliance.'
    parameters: {
      booleanState: {
        type: 'String'
        metadata: {
          displayName: 'BooleanState'
          description: 'True or false for the state of the alias'
        }
        allowedValues: [
          'true'
          'false'
        ]
        defaultValue: 'false'
      }
    }
    metadata: {
      category: 'Avanade: CosmosDB'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DocumentDB/databaseAccounts'
          }
          {
            field: 'Microsoft.DocumentDB/databaseAccounts/enableAutomaticFailover'
            Equals: '[parameters(\'booleanState\')]'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource ide5a173b2_a117_4ad8_addf_b2fdc8f9fea2 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'ide5a173b2-a117-4ad8-addf-b2fdc8f9fea2'
  properties: {
    displayName: 'Audit Cosmos DB Virtual Network and Firewall rules that do not contain specific ranges'
    description: 'This policy audits if the Virtual Network Filter is disabled, the Firewall is disabled, or if it does not include proper subnet range. If either one is not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: CosmosDB'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DocumentDB/databaseAccounts'
          }
          {
            anyOf: [
              {
                field: 'Microsoft.DocumentDB/databaseAccounts/isVirtualNetworkFilterEnabled'
                Equals: 'false'
              }
              {
                field: 'Microsoft.DocumentDB/databaseAccounts/ipRangeFilter'
                notLike: '000.00.*'
              }
              {
                field: 'Microsoft.DocumentDB/databaseAccounts/ipRangeFilter'
                notEquals: '0.0.0.0'
              }
            ]
          }
          {
            anyOf: [
              {
                field: 'Microsoft.DocumentDB/databaseAccounts/virtualNetworkRules[*]'
                notEquals: '0.0.0.0/16'
              }
              {
                field: 'Microsoft.DocumentDB/databaseAccounts/virtualNetworkRules[*]'
                notEquals: '0.0.0.0/16'
              }
              {
                field: 'Microsoft.DocumentDB/databaseAccounts/virtualNetworkRules[*]'
                notEquals: '0.0.0.0/16'
              }
            ]
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
