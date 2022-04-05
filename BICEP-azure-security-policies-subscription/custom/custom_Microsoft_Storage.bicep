targetScope = 'subscription'

resource id336028ad_144f_4f40_a36d_f63c6531ccff 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id336028ad-144f-4f40-a36d-f63c6531ccff'
  properties: {
    displayName: 'Audit Storage accounts that do not have \'Advanced Threat Protection\' enabled.'
    description: 'This policy audits if \'Advanced Threat Protection\' for Storage Accounts is disabled. If not enabled, you will be out of compliance.'
    metadata: {
      category: 'Avanade: Storage'
    }
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'auditIfNotExists'
          'disabled'
        ]
        defaultValue: 'auditIfNotExists'
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Storage/storageAccounts'
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.Security/advancedThreatProtectionSettings'
          name: 'current'
          existenceCondition: {
            field: 'Microsoft.Security/advancedThreatProtectionSettings/isEnabled'
            equals: 'true'
          }
        }
      }
    }
  }
}

resource id0c8f9c47_5abb_4cab_9d3d_bec71fbebdc3 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0c8f9c47-5abb-4cab-9d3d-bec71fbebdc3'
  properties: {
    displayName: 'Audit - Storage Accounts should be private with Blob Public Access disabled'
    description: 'This policy audits any Storage Account that has Blob Public Access enabled in order to restrict access to the data within the containers. If not configured properly, you will be out of compliance.'
    metadata: {
      category: 'Avanade: Storage'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Storage/storageAccounts'
          }
          {
            not: {
              field: 'Microsoft.Storage/storageAccounts/allowBlobPublicAccess'
              equals: 'False'
            }
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource idf3d66bd0_0965_4241_a37d_9d2bbd6d83ae 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idf3d66bd0-0965-4241-a37d-9d2bbd6d83ae'
  properties: {
    displayName: 'Audit Storage Accounts that do not require Secure Transfer.'
    description: 'This policy audits if \'HTTPS Traffic Only\' for Storage Accounts is disabled. If not enabled, you will be out of compliance.'
    metadata: {
      category: 'Avanade: Storage'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Storage/storageAccounts'
          }
          {
            not: {
              field: 'Microsoft.Storage/storageAccounts/supportsHttpsTrafficOnly'
              equals: 'True'
            }
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource id007505b6_118e_41d9_84a8_f344d7f77e82 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id007505b6-118e-41d9-84a8-f344d7f77e82'
  properties: {
    displayName: 'Audit - Storage Accounts should be encrypted with TLS 1.2 and Secure Transfer Required must be Enabled'
    description: 'This policy audits Storage Accounts where the Minimum TLS Version is not set to \'1.2\' and Secure Transfer Required (HTTPS Only) is set to \'Disabled\'. If either are not configured properly, you will be out of compliance.'
    metadata: {
      category: 'Avanade: Storage'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Storage/storageAccounts'
          }
          {
            anyOf: [
              {
                not: {
                  field: 'Microsoft.Storage/storageAccounts/supportsHttpsTrafficOnly'
                  equals: 'True'
                }
              }
              {
                not: {
                  field: 'Microsoft.Storage/storageAccounts/minimumTlsVersion'
                  equals: 'TLS1_2'
                }
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

resource idee2b2208_eed8_49d9_afd9_40eb221502db 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idee2b2208-eed8-49d9-afd9-40eb221502db'
  properties: {
    displayName: 'Audit storage accounts with unrestricted network access'
    description: 'This policy audits unrestricted network access in firewall settings within a Storage Account. If access is allowed from All Networks, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Storage'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Storage/storageAccounts'
          }
          {
            field: 'Microsoft.Storage/storageAccounts/networkAcls.defaultAction'
            equals: 'Allow'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
