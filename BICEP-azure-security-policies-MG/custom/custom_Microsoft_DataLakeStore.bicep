targetScope = 'managementGroup'

resource id22723e6f_aa1a_454d_99b0_39705795245f 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id22723e6f-aa1a-454d-99b0-39705795245f'
  properties: {
    displayName: 'Audit Data Lake Storage Gen 1 resources that exists. This service is considered as legacy and should not be utilized  '
    description: 'This policy audits the creation of a Data Lake Storage Gen 1 resource.'
    parameters: {}
    metadata: {
      category: 'Avanade: DataLake'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DataLakeStore/accounts'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource idc79a55ef_f29c_472f_84a7_ab33224f37ed 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idc79a55ef-f29c-472f-84a7-ab33224f37ed'
  properties: {
    displayName: 'Audit Data Lake Storage Gen 1 Firewall rules that do not contain specific ranges'
    description: 'This policy audits the altering or creation of any Data Lake Storage Gen 1 Firewall from being disabled. If not enabled, you will be denied the creation or changing of this setting.'
    parameters: {}
    metadata: {
      category: 'Avanade: DataLake'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DataLakeStore/accounts'
          }
          {
            field: 'Microsoft.DataLakeStore/accounts/firewallState'
            notEquals: 'enabled'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
