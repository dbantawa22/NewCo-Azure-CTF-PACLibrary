targetScope = 'managementGroup'

resource id194159bd_3aa2_4065_a4d7_25f1555fb125 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id194159bd-3aa2-4065-a4d7-25f1555fb125'
  properties: {
    displayName: 'Audit - Azure Kubernetes Services for RBAC should be enabled.'
    description: 'This policy audits if \'RBAC\' is not enabled for Kubernetes Services. If not enabled properly, you will be out of compliance.'
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
      category: 'Avanade: AzureKubernetesServices'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.ContainerService/managedClusters'
          }
          {
            anyOf: [
              {
                field: 'Microsoft.ContainerService/managedClusters/enableRBAC'
                exists: '[parameters(\'booleanState\')]'
              }
              {
                field: 'Microsoft.ContainerService/managedClusters/enableRBAC'
                equals: '[parameters(\'booleanState\')]'
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
