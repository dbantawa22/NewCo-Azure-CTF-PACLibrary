targetScope = 'managementGroup'

resource idff0fbd85_9f05_440c_81f1_e4fb26cf0f9a 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idff0fbd85-9f05-440c-81f1-e4fb26cf0f9a'
  properties: {
    displayName: 'Audit PostgreSQL \'Advanced Threat Protection\' that does not cover required alert types'
    description: 'This policy audits if Advanced Threat Protection is disabled for DBforPostgreSQL. If it is disabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.DBforPostgreSQL/servers'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/state'
                equals: 'Enabled'
              }
              {
                field: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'SQL_Injection'
              }
              {
                field: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Sql_Injection_Vulnerability'
              }
              {
                field: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Data_Exfiltration'
              }
              {
                field: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Unsafe_Action'
              }
              {
                field: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Brute_Force'
              }
              {
                field: 'Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Anomalous_Client_Login'
              }
            ]
          }
        }
      }
    }
  }
}

resource idd8b9f402_1a9a_4f56_bc7f_b84bcc5b087b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idd8b9f402-1a9a-4f56-bc7f-b84bcc5b087b'
  properties: {
    displayName: 'Audit PostgreSQL SSL Enforcement that is not enabled'
    description: 'This policy audits if SSL Enforcement is disabled for DBforPostgreSQL. If it is disabled, you will be out of compliance.'
    parameters: {
      enabledState: {
        type: 'String'
        metadata: {
          displayName: 'Enabled State'
          description: 'Enable or disable the state of the alias'
        }
        allowedValues: [
          'enabled'
          'disabled'
        ]
        defaultValue: 'disabled'
      }
    }
    metadata: {
      category: 'Avanade: PostgreSQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DBforPostgreSQL/servers'
          }
          {
            field: 'Microsoft.DBforPostgreSQL/servers/sslEnforcement'
            equals: '[parameters(\'enabledState\')]'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource id046abdc2_b3bc_463e_8948_879d06c676a6 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id046abdc2-b3bc-463e-8948-879d06c676a6'
  properties: {
    displayName: 'Audit Basic Tier PostgreSQL'
    description: 'This policy audits if the SKU Tier is Basic and not General Purpose or Memory Optimized for DBforPostgreSQL. If it is in Basic Tier, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DBforPostgreSQL/servers'
          }
          {
            not: {
              anyOf: [
                {
                  field: 'Microsoft.DBforPostgreSQL/servers/sku.tier'
                  equals: 'GeneralPurpose'
                }
                {
                  field: 'Microsoft.DBforPostgreSQL/servers/sku.tier'
                  equals: 'MemoryOptimized'
                }
              ]
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
