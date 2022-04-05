targetScope = 'managementGroup'

resource idfe657780_2c06_492c_84ae_b5361b431d19 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idfe657780-2c06-492c-84ae-b5361b431d19'
  properties: {
    displayName: 'Audit - Azure Cache for Redis should use private DNS zones'
    description: 'This policy audits Azure Cache for Redis that do not use private DNS zones. Use private DNS zones to override the DNS resolution for a private endpoint. A private DNS zone can be linked to your virtual network to resolve to Azure Cache for Redis. Learn more at: https://aka.ms/privatednszone.'
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
    metadata: {
      category: 'Avanade: Cache'
      Severity: 'High'
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
                equals: 'redisCache'
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
