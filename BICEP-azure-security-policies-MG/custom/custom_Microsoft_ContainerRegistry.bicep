targetScope = 'managementGroup'

resource id077ef4bf_68e4_4003_99ac_847a004e81b5 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id077ef4bf-68e4-4003-99ac-847a004e81b5'
  properties: {
    displayName: 'Audit - Container registries should use private DNS zones'
    description: 'This policy audits Container registries that do not use private DNS zones. Use private DNS zones to override the DNS resolution for a private endpoint. A private DNS zone links to your virtual network to resolve to your Container Registry. If this is not configured properly, you will be out of compliance.'
    metadata: {
      category: 'Avanade: ContainerRegistry'
      Severity: 'High'
    }
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'AuditIfNotExists'
          'Disabled'
        ]
        defaultValue: 'AuditIfNotExists'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/privateEndpoints'
          }
          {
            count: {
              field: 'Microsoft.Network/privateEndpoints/privateLinkServiceConnections[*].groupIds[*]'
              where: {
                field: 'Microsoft.Network/privateEndpoints/privateLinkServiceConnections[*].groupIds[*]'
                equals: 'registry'
              }
            }
            greaterOrEquals: 1
          }
        ]
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.Network/privateEndpoints/privateDnsZoneGroups'
        }
      }
    }
  }
}

resource idc3cd5db0_577a_4238_9103_2fffa7da5618 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idc3cd5db0-577a-4238-9103-2fffa7da5618'
  properties: {
    displayName: 'Audit - Container registries should use private endpoints'
    description: 'This policy audits Container registries that do not use private endpoints. Private endpoints connect your virtual network to Azure services without a public IP address at the source or destination. By mapping private endpoints to your premium container registry resources, you can reduce data leakage risks. If this is not configured properly, you will be out of compliance.'
    metadata: {
      category: 'Avanade: ContainerRegistry'
      Severity: 'High'
    }
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'AuditIfNotExists'
          'Disabled'
        ]
        defaultValue: 'AuditIfNotExists'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.ContainerRegistry/registries'
          }
          {
            field: 'Microsoft.ContainerRegistry/registries/sku.name'
            equals: 'Premium'
          }
        ]
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.ContainerRegistry/registries/privateEndpointConnections'
          existenceCondition: {
            field: 'Microsoft.ContainerRegistry/registries/privateEndpointConnections/privateLinkServiceConnectionState.status'
            equals: 'Approved'
          }
        }
      }
    }
  }
}
