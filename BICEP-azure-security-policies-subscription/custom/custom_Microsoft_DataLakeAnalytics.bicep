targetScope = 'subscription'

resource idf1876d0f_f851_4c1e_93a7_4d2f75bb7eaa 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idf1876d0f-f851-4c1e-93a7-4d2f75bb7eaa'
  properties: {
    displayName: 'Audit Data Lake Analytics resources that exists. This service is considered as legacy and should not be utilized  '
    description: 'This policy audits the creation of a Data Lake Analytics resource.'
    parameters: {}
    metadata: {
      category: 'Avanade: DataLake'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DataLakeAnalytics/accounts'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource id4bead65d_03a5_40e3_8979_5a192fcfce5b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id4bead65d-03a5-40e3-8979-5a192fcfce5b'
  properties: {
    displayName: 'Audit Data Lake Analytics Firewall rules that do not contain specific ranges'
    description: 'This policy audits the altering or creation of any Data Lake Analytics Firewall from being disabled. If not enabled, you will be denied the creation or changing of this setting.'
    parameters: {}
    metadata: {
      category: 'Avanade: DataLake'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DataLakeAnalytics/accounts'
          }
          {
            field: 'Microsoft.DataLakeAnalytics/accounts/firewallState'
            notEquals: 'Enabled'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
