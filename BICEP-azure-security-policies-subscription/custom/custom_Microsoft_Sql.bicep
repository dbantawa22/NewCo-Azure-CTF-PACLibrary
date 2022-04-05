targetScope = 'subscription'

resource idcdf2b54c_3c97_4e96_8267_ae66c1b59a28 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idcdf2b54c-3c97-4e96-8267-ae66c1b59a28'
  properties: {
    displayName: 'Audit MySQL SSL Enforcement that is not enabled'
    description: 'This policy audits if SSL Enforcement is disabled for DBforMySQL. If it is disabled, you will be out of compliance.'
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
      category: 'Avanade: MySQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DBforMySQL/servers'
          }
          {
            field: 'Microsoft.DBforMySQL/servers/sslEnforcement'
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

resource id7669c32a_8782_4a3c_9ac3_a14a9280cdec 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id7669c32a-8782-4a3c-9ac3-a14a9280cdec'
  properties: {
    displayName: 'Audit \'Advanced Threat Protection\' is disabled.'
    description: 'This policy audits if \'Advanced Threat Protection\' is disabled. If not enabled, you will be out of compliance.'
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
        defaultValue: 'enabled'
      }
    }
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Sql/servers/databases'
          }
          {
            field: 'name'
            notEquals: 'master'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.SQL/servers/databases/securityAlertPolicies'
          name: 'default'
          existenceCondition: {
            field: 'Microsoft.Sql/servers/databases/securityAlertPolicies/state'
            equals: '[parameters(\'enabledState\')]'
          }
        }
      }
    }
  }
}

resource id0a9e66cc_9b33_4d48_86d7_63c14a866f2c 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0a9e66cc-9b33-4d48-86d7-63c14a866f2c'
  properties: {
    displayName: 'Audit \'Audit Logs\' disabled on sql database'
    description: 'This policy audits if \'Audit Logs\' are disabled. If not enabled, you will be out of compliance.'
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
        defaultValue: 'enabled'
      }
    }
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Sql/servers/databases'
          }
          {
            field: 'name'
            notEquals: 'master'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.SQL/servers/databases/auditingSettings'
          name: 'default'
          existenceCondition: {
            field: 'Microsoft.Sql/auditingSettings.state'
            equals: '[parameters(\'enabledState\')]'
          }
        }
      }
    }
  }
}

resource idb1da485d_6193_42a0_827d_3ffa343186e2 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idb1da485d-6193-42a0-827d-3ffa343186e2'
  properties: {
    displayName: 'Audit \'Transparent Database Encryption\' disabled on sql database.'
    description: 'This policy audits if \'Transparent Data Encryption\' is disabled. If not enabled, you will be out of compliance'
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
        defaultValue: 'enabled'
      }
    }
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Sql/servers/databases'
          }
          {
            field: 'name'
            notEquals: 'master'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Sql/servers/databases/transparentDataEncryption'
          name: 'current'
          existenceCondition: {
            field: 'Microsoft.Sql/transparentDataEncryption.status'
            equals: '[parameters(\'enabledState\')]'
          }
        }
      }
    }
  }
}

resource idbc63e167_52a1_47ea_8d87_f93819c08e37 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idbc63e167-52a1-47ea-8d87-f93819c08e37'
  properties: {
    displayName: 'Audit \'Advanced Threat Protection\' does not cover required alert types.'
    description: 'This policy audits if \'Advanced Threat Protection\' or any of its protection alert types is disabled. If not enabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.SQL/servers'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.SQL/servers/securityAlertPolicies'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Sql/servers/securityAlertPolicies/state'
                equals: 'Enabled'
              }
              {
                field: 'Microsoft.Sql/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Access_Anomaly'
              }
              {
                field: 'Microsoft.Sql/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Unsafe_Action'
              }
              {
                field: 'Microsoft.Sql/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Sql_Injection'
              }
              {
                field: 'Microsoft.Sql/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Sql_Injection_Vulnerability'
              }
              {
                field: 'Microsoft.Sql/servers/securityAlertPolicies/disabledAlerts[*]'
                notContains: 'Data_Exfiltration'
              }
            ]
          }
        }
      }
    }
  }
}

resource idb2100885_2e0b_45af_bb72_9811253b0edf 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idb2100885-2e0b-45af-bb72-9811253b0edf'
  properties: {
    displayName: 'Audit SQL Servers with \'Allow Access to Azure Services\' enabled'
    description: 'This policy audits if \'Allow Access To Azure Services\' is enabled. If not disabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Sql/servers/firewallRules'
          }
          {
            field: 'Microsoft.Sql/servers/firewallRules/startIpAddress'
            equals: '0.0.0.0'
          }
          {
            field: 'Microsoft.Sql/servers/firewallRules/endIpAddress'
            equals: '0.0.0.0'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource iddb20f425_8fd6_4571_97e9_cf64d05c7c77 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'iddb20f425-8fd6-4571-97e9-cf64d05c7c77'
  properties: {
    displayName: 'Audit \'Audit Logs\' disabled on sql server'
    description: 'This policy audits if \'Audit Logs\' are disabled. If not enabled, you will be out of compliance.'
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
        defaultValue: 'enabled'
      }
    }
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Sql/servers'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Sql/servers/auditingSettings'
          name: 'default'
          existenceCondition: {
            field: 'Microsoft.Sql/auditingSettings.state'
            equals: '[parameters(\'enabledState\')]'
          }
        }
      }
    }
  }
}

resource id3a903ff9_5e5e_4400_a4f0_1db231c927c8 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id3a903ff9-5e5e-4400-a4f0-1db231c927c8'
  properties: {
    displayName: 'Audit SQL Servers with \'Azure Active Directory Authentication\' disabled'
    description: 'This policy audits if \'Azure Active Directory Authentication\' is disabled. If not enabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'SQL'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.SQL/servers'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Sql/servers/administrators'
        }
      }
    }
  }
}

resource id0717ac5b_d027_4e26_8654_a2e5d6c76536 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0717ac5b-d027-4e26-8654-a2e5d6c76536'
  properties: {
    displayName: 'Audit Sql Server open Firewall'
    description: 'This policy audits the Firewall IP range if it is set from 0.0.0 to 255.255.255.25. If not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'SQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Sql/servers/firewallRules'
          }
          {
            field: 'Microsoft.Sql/servers/firewallRules/startIpAddress'
            equals: '0.0.0.0'
          }
          {
            field: 'Microsoft.Sql/servers/firewallRules/endIpAddress'
            equals: '255.255.255.25'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource idf2a56aa5_6614_4b6d_9481_13a5373149ad 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idf2a56aa5-6614-4b6d-9481-13a5373149ad'
  properties: {
    displayName: 'Audit SQL Server is not using the latest Version.'
    description: 'This policy audits if SQL Server Version is not set to the latest version. If not configured properly, you will be out of compliance.'
    parameters: {
      sqlServerVersion: {
        type: 'String'
        metadata: {
          displayName: 'Expected SQL Server Version'
          description: 'The expected SQL server Version'
        }
        defaultValue: '12.0'
      }
    }
    metadata: {
      category: 'Avanade: SQL'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Sql/servers'
          }
          {
            not: {
              field: 'Microsoft.Sql/servers/version'
              equals: '[parameters(\'sqlServerVersion\')]'
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
