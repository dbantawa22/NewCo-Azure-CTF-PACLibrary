targetScope = 'managementGroup'

resource id23cbaaaf_c0cc_4f3e_9d92_90d3152e4507 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id23cbaaaf-c0cc-4f3e-9d92-90d3152e4507'
  properties: {
    displayName: 'Audit App Service where Azure Active Directory Authentication is disabled.'
    description: 'This policy audits if Authentication is Off and Azure Active Directory isn\'t enabled as an authentication provider. If either is not configured properly, you will be out of compliance.'
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'deny'
          'disabled'
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites/config'
          }
          {
            anyOf: [
              {
                field: 'Microsoft.Web/sites/config/siteAuthEnabled'
                equals: 'false'
              }
              {
                field: 'Microsoft.Web/sites/config/siteAuthSettings.isAadAutoProvisioned'
                equals: 'false'
              }
            ]
          }
        ]
      }
      then: {
        effect: '[parameters(\'effect\')]'
      }
    }
  }
}

resource id49865359_2812_4d96_992e_f48413a1d70b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id49865359-2812-4d96-992e-f48413a1d70b'
  properties: {
    displayName: 'Audit App Service that do not utilize Always On.'
    description: 'Audits App Services that are not set to \'Always On\' which is a control that keeps the web app loaded at all times'
    parameters: {}
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/alwaysOn'
            equals: 'True'
          }
        }
      }
    }
  }
}

resource id062208d6_de03_4af6_a0d8_b3272dfe4676 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id062208d6-de03-4af6-a0d8-b3272dfe4676'
  properties: {
    displayName: 'Audit App Service \'Availability State\' set to \'Normal\''
    description: 'This policy audits the availability state if it is not set to \'Normal\'. If not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'Microsoft.Web/sites/availabilityState'
            notEquals: 'Normal'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource id72aab6db_23e5_47e1_9e31_8451e07a0ebc 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id72aab6db-23e5-47e1-9e31-8451e07a0ebc'
  properties: {
    displayName: 'Audit App Service where client certificates are allowed. '
    description: 'This policy audits App Services with disabled Client Certificates. If not configured properly, you will be out of compliance.'
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'audit'
          'disabled'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'Microsoft.Web/sites/clientCertEnabled'
            notEquals: 'True'
          }
        ]
      }
      then: {
        effect: '[parameters(\'effect\')]'
      }
    }
  }
}

resource id10920f92_fb1f_4978_907c_18a8e0cf7756 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id10920f92-fb1f-4978-907c-18a8e0cf7756'
  properties: {
    displayName: 'Audit App Service where \'Detailed Error Logging\' status is disabled.'
    description: 'This policy audits if the detail error logging status is disabled in an App Service. If not configured properly, you will be out of compliance.'
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
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/detailedErrorLoggingEnabled'
            equals: 'True'
          }
        }
      }
    }
  }
}

resource id2a0f6f93_5d36_452b_ad14_a1b808f54962 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id2a0f6f93-5d36-452b-ad14-a1b808f54962'
  properties: {
    displayName: 'Audit App Service where Logging is not enabled.'
    description: 'This policy audits App Services with disabled Diagnostic Logs for detailed error logging, http logging, and request tracing. If not configured properly, you will be out of compliance.'
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
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.web/sites/config'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Web/sites/config/detailedErrorLoggingEnabled'
                equals: 'true'
              }
              {
                field: 'Microsoft.Web/sites/config/httpLoggingEnabled'
                equals: 'true'
              }
              {
                field: 'Microsoft.Web/sites/config/requestTracingEnabled'
                equals: 'true'
              }
            ]
          }
        }
      }
    }
  }
}

resource idacb7460e_72de_4e87_8bd0_5b8f2f7ea1f7 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idacb7460e-72de-4e87-8bd0-5b8f2f7ea1f7'
  properties: {
    displayName: 'Audit Empty Host Names on App Service'
    description: 'THis policy audits the host names of an App Service that is specified in the policy. If not configured properly, you will be out of compliance.'
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'audit'
          'disabled'
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'Microsoft.Web/sites/hostNames[*]'
            notEquals: ''
          }
        ]
      }
      then: {
        effect: '[parameters(\'effect\')]'
      }
    }
  }
}

resource idea676157_8a94_4df6_ab3d_20dd80689717 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idea676157-8a94-4df6-ab3d-20dd80689717'
  properties: {
    displayName: 'Audit App Service that does not require HTTP2'
    description: 'This policy audits if connection over HTTP2.0 is allowed for the App Service. If this is not allowed, you will be out of compliance.'
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
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/http20Enabled'
            equals: 'True'
          }
        }
      }
    }
  }
}

resource id41f70fd3_a2ff_465d_9b1e_7a61e0d1929c 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id41f70fd3-a2ff-465d-9b1e-7a61e0d1929c'
  properties: {
    displayName: 'Audit App Service where HTTP Logging is disabled.'
    description: 'This policy audits App Services which have HTTP logging disabled. If not configured properly, you will be out of compliance.'
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'deny'
          'disabled'
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/httpLoggingEnabled'
            equals: 'True'
          }
        }
      }
    }
  }
}

resource id48647183_2b97_4886_9d2e_ba8a56f612d9 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id48647183-2b97-4886-9d2e-ba8a56f612d9'
  properties: {
    displayName: 'Audit App Service where \'HTTPS Only\' is not enabled.'
    description: 'This policy audits App Services that do not have \'HTTPS Only\' enabled. If not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'Microsoft.Web/sites/httpsOnly'
            notEquals: 'True'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource id9cc9ef2f_d05a_4ea3_92bb_6d315e274a4d 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id9cc9ef2f-d05a-4ea3-92bb-6d315e274a4d'
  properties: {
    displayName: 'Audits App Service where the Minimum TLS Version does not meet requirements.'
    description: 'This policy audits if SSL is not configured to TLS 1.2 in App Services. If not configured properly, you will be out of compliance.'
    parameters: {
      minTlsVersion: {
        type: 'String'
        metadata: {
          displayName: 'Minimum TLS Version'
          description: 'The Minimum allowed TLS version.'
        }
        defaultValue: '1.2'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/minTlsVersion'
            equals: '[parameters(\'minTlsVersion\')]'
          }
        }
      }
    }
  }
}

resource id2ac4033a_36ae_458d_bf45_d57fc4b460a5 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id2ac4033a-36ae-458d-bf45-d57fc4b460a5'
  properties: {
    displayName: 'Audit App Service that does not use the required .Net Framework Version'
    description: 'This policy audits any App Services that do not have the Net Framework version set to \'4.0\'. If not configured properly, you will be out of compliance.'
    parameters: {
      netFxVersion: {
        type: 'String'
        metadata: {
          displayName: '.Net Framework Version'
          description: '.Net Framework Version'
        }
        defaultValue: 'v4.0'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/netFrameworkVersion'
            equals: '[parameters(\'netFxVersion\')]'
          }
        }
      }
    }
  }
}

resource id05390270_9330_4916_81e8_01fe2980111e 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id05390270-9330-4916-81e8-01fe2980111e'
  properties: {
    displayName: 'Audit App Service that does not use the required PHP version.'
    description: 'This policy audits any App Services that do not have the PHP version set to the required value (supplied via parameter). If not configured properly, you will be out of compliance.'
    parameters: {
      phpVersion: {
        type: 'String'
        metadata: {
          displayName: 'Required PHP version'
          description: 'Required PHP version'
        }
        defaultValue: '5.6'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/phpVersion'
            equals: '[parameters(\'phpVersion\')]'
          }
        }
      }
    }
  }
}

resource id0b9d4143_5191_47f3_982c_bd5000b913a0 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0b9d4143-5191-47f3-982c-bd5000b913a0'
  properties: {
    displayName: 'Audit App Service that does not use the required Python Version'
    description: 'This policy audits any App Services that do not have the Python version set to the supplied value. See Individual Assignment Details for more info. If not configured properly, you will be out of compliance.'
    parameters: {
      pythonVersion: {
        type: 'String'
        metadata: {
          displayName: 'Required python version'
          description: 'Required python version'
        }
        defaultValue: '3.4'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/pythonVersion'
            equals: '[parameters(\'pythonVersion\')]'
          }
        }
      }
    }
  }
}

resource id40d3f97b_8f10_4fff_87f4_283b261086f0 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id40d3f97b-8f10-4fff-87f4-283b261086f0'
  properties: {
    displayName: 'Audit App Service where Remote Debugging is enabled.'
    description: 'This policy audits any App Services that do not have \'Remote Debugging\' disabled. Remote debugging must be turned off for App Service. If configured to enabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: 'AuditIfNotExists'
        details: {
          type: 'Microsoft.web/sites/config'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Web/sites/config/remoteDebuggingEnabled'
                notEquals: 'True'
              }
            ]
          }
        }
      }
    }
  }
}

resource id4b68b94c_89f4_44e2_9be5_117640297416 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id4b68b94c-89f4-44e2-9be5-117640297416'
  properties: {
    displayName: 'Audit App service that does not have \'Request Tracing\' enabled.'
    description: 'This policy audits an App Service if \'Request Tracing\' is set to disabled. If not configured properly, you will be out of compliance.'
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
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: '[parameters(\'effect\')]'
        details: {
          type: 'Microsoft.Web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/requestTracingEnabled'
            equals: 'True'
          }
        }
      }
    }
  }
}

resource id189e4918_258b_45eb_9388_badf0d74c00f 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id189e4918-258b-45eb-9388-badf0d74c00f'
  properties: {
    displayName: 'Audit App Service using Consumption Plan (Farm 402)'
    description: 'This policy audits any App Services that do not have the \'Server Farm ID\' not equal to 402. This also applies to Azure Functions. If not configured properly, you will be out of compliance.'
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'audit'
          'disabled'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'Microsoft.Web/sites/serverFarmId'
            notEquals: 402
          }
        ]
      }
      then: {
        effect: '[parameters(\'effect\')]'
      }
    }
  }
}

resource id899adf59_e46a_44ed_b7ae_f18fa453cfa5 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id899adf59-e46a-44ed-b7ae-f18fa453cfa5'
  properties: {
    displayName: 'Audit App Service with Site Authentication Disabled.'
    description: 'This policy audits any App Services that have \'Site Authentication\' disabled. If not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Web/sites'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Web/sites/config'
          existenceCondition: {
            field: 'Microsoft.Web/sites/config/siteAuthEnabled'
            equals: 'True'
          }
        }
      }
    }
  }
}

resource idc084c9eb_970b_44ea_942b_43b0833d5602 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idc084c9eb-970b-44ea-942b-43b0833d5602'
  properties: {
    displayName: 'Audit App Service Hostnames that are not bound to an SSL certificate.'
    description: 'This policy audits any App Services that have \'SSL Binding\' disabled. If not configured properly, this will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'Microsoft.Web/sites/hostNameSslStates[*].sslState'
            equals: 'Disabled'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource idae18b085_dd6b_4746_ad53_dd20f4853da1 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idae18b085-dd6b-4746-ad53-dd20f4853da1'
  properties: {
    displayName: 'Audit App Service where no IP restrictions are in place.'
    description: 'This policy audits if a rule is set for IP Restrictions and if the rule set is equal to \'Any\'. If either is not configured properly, this will be out of compliance.'
    parameters: {
      effect: {
        type: 'String'
        metadata: {
          displayName: 'Effect'
          description: 'Enable or disable the execution of the policy'
        }
        allowedValues: [
          'deny'
          'disabled'
          'audit'
        ]
        defaultValue: 'audit'
      }
    }
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'Microsoft.Web/sites/config/ipSecurityRestrictions'
            exists: 'true'
          }
          {
            field: 'Microsoft.Web/sites/config/ipSecurityRestrictions[*].ipAddress'
            equals: 'Any'
          }
        ]
      }
      then: {
        effect: '[parameters(\'effect\')]'
      }
    }
  }
}

resource id969e7778_82b8_4e11_9d80_3eb81702dac4 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id969e7778-82b8-4e11-9d80-3eb81702dac4'
  properties: {
    displayName: 'Audit App Service where \'Usage State\' is not set to \'Normal\''
    description: 'This policy audits any App Services that do not have the \'Usage State\' value set to \'Normal\'. If not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: AppService'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'Microsoft.Web/sites/usageState'
            notEquals: 'Normal'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
