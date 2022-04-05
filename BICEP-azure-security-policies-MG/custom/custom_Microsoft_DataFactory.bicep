targetScope = 'managementGroup'

resource id7cf960f7_23de_434b_9e86_e06f7001a06a 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id7cf960f7-23de-434b-9e86-e06f7001a06a'
  properties: {
    displayName: 'Audit Data Factory V2 that does not have Secure Output enabled'
    description: 'This policy audits if \'Secure Output\' is not enabled for its pipeline. If not enabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: DataFactory'
    }
    policyRule: {
      if: {
        not: {
          anyOf: [
            {
              field: 'type'
              equals: 'Microsoft.DataFactory/factories'
            }
            {
              field: 'Microsoft.DataFactory/factories/pipelines/activities[*].policy.secureOutput'
              equals: 'true'
            }
          ]
        }
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
