targetScope = 'managementGroup'

resource id43da6de3_9ccd_4242_9b24_b7b79c8471c9 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id43da6de3_9ccd_4242_9b24_b7b79c8471c9'
  properties: {
    displayName: 'Audit Purge Protection Disabled on KeyVaults'
    description: 'This policy audits if \'Purge Protection\' is disabled. If not enabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: KeyVault'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.KeyVault/vaults'
          }
          {
            anyOf: [
              {
                field: 'Microsoft.KeyVault/vaults/enablePurgeProtection'
                exists: 'false'
              }
              {
                field: 'Microsoft.KeyVault/vaults/enablePurgeProtection'
                equals: 'false'
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

resource idc6151bf0_56cb_4985_92dd_b02977f76f04 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idc6151bf0-56cb-4985-92dd-b02977f76f04'
  properties: {
    displayName: 'Audit Key Vaults without \'Soft Delete\' enabled.'
    description: 'This policy audits if \'Soft Delete\' is disabled. If not enabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: KeyVault'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.KeyVault/vaults'
          }
          {
            anyOf: [
              {
                field: 'Microsoft.KeyVault/vaults/enableSoftDelete'
                exists: 'false'
              }
              {
                field: 'Microsoft.KeyVault/vaults/enableSoftDelete'
                equals: 'false'
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
