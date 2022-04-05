targetScope = 'managementGroup'

resource idd6fe50db_a8ce_4b81_b94b_8c1a78399092 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idd6fe50db-a8ce-4b81-b94b-8c1a78399092'
  properties: {
    displayName: 'Audit diagnostic settings for Azure API Management - Event Hubs'
    description: 'Audit diagnostic settings for Azure API Management - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.ApiManagement/service'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id2a9f8e40_4bce_4cb0_8517_8372b6728cd3 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id2a9f8e40-4bce-4cb0-8517-8372b6728cd3'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Application Insights - Event Hubs'
    description: 'Audit diagnostic settings for Azure Application Insights - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'microsoft.insights/components'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id011d4994_a35b_4354_843e_edf80c5bdd8d 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id011d4994-a35b-4354-843e-edf80c5bdd8d'
  properties: {
    displayName: 'Audit diagnostic settings for App Service Environment - Event Hubs'
    description: 'Audit diagnostic settings for App Service Environment - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/hostingEnvironments'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id8a90f02a_28bc_401f_87bf_bdf75c18690b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id8a90f02a-28bc-401f-87bf-bdf75c18690b'
  properties: {
    displayName: 'Audit diagnostic settings for Bastion Hosts - Event Hubs'
    description: 'Audit diagnostic settings for Bastion Hosts - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/bastionHosts'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource ide9e24d78_25b6_48d8_86d5_967a18745d5e 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'ide9e24d78-25b6-48d8-86d5-967a18745d5e'
  properties: {
    displayName: 'Audit diagnostic settings for CDN Profiles - Event Hubs'
    description: 'Audit diagnostic settings for CDN Profiles - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Cdn/profiles'
          }
          {
            field: 'location'
            equals: 'Global'
          }
          {
            field: 'Microsoft.CDN/profiles/sku.name'
            equals: 'Standard_Microsoft'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id90c8d929_8e63_47d8_8822_c1d6fa087777 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id90c8d929-8e63-47d8-8822-c1d6fa087777'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Cognitive Search - Event Hubs'
    description: 'Audit diagnostic settings for Azure Cognitive Search - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Search/searchServices'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource idefefb89f_e1c1_460a_8fa1_e6c1e9b359e9 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idefefb89f-e1c1-460a-8fa1-e6c1e9b359e9'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Cognitive Services - Event Hubs'
    description: 'Audit diagnostic settings for Azure Cognitive Services - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.CognitiveServices/accounts'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource idfbb8683e_aa67_4c5d_be6b_933fa12b0a40 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idfbb8683e-aa67-4c5d-be6b-933fa12b0a40'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Databricks - Event Hubs'
    description: 'Audit diagnostic settings for Azure Databricks - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Databricks/workspaces'
          }
          {
            field: 'Microsoft.DataBricks/workspaces/sku.tier'
            equals: 'Premium'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id21376ad7_d1ca_4112_841b_a2a0fd574627 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id21376ad7-d1ca-4112-841b-a2a0fd574627'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Data Factory - Event Hubs'
    description: 'Audit diagnostic settings for Azure Data Factory - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.DataFactory/factories'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id89b2d567_ada6_4ffb_bdd1_93a141a00e45 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id89b2d567-ada6-4ffb-bdd1-93a141a00e45'
  properties: {
    displayName: 'Audit diagnostic settings for Device Provisioning - Event Hubs'
    description: 'Audit diagnostic settings for Device Provisioning - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Devices/provisioningServices'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id5d3925c0_fb4a_4f2c_8eb6_37e38ed73287 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id5d3925c0-fb4a-4f2c-8eb6-37e38ed73287'
  properties: {
    displayName: 'Audit diagnostic settings for Azure HDInsights - Event Hubs'
    description: 'Audit diagnostic settings for Azure HDInsights - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.HDInsight/clusters'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id6f8a86b5_7e13_464d_a717_f30fbabc65d8 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id6f8a86b5-7e13-464d-a717-f30fbabc65d8'
  properties: {
    displayName: 'Audit diagnostic settings for IoT Hubs - Event Hubs'
    description: 'Audit diagnostic settings for IoT Hubs - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Devices/IotHubs'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id60fa0438_e3cd_41cb_be14_11208b47df9a 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id60fa0438-e3cd-41cb-be14-11208b47df9a'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Log Analytics Workspaces - Event Hubs'
    description: 'Audit diagnostic settings for Azure Log Analytics Workspaces - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.OperationalInsights/workspaces'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id84a5a2ce_4afb_415a_9ec3_e2cd85aba632 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id84a5a2ce-4afb-415a-9ec3-e2cd85aba632'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Logic Apps - Event Hubs'
    description: 'Audit diagnostic settings for Azure Logic Apps - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Logic/workflows'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id3ca0edbd_cf04_426f_9a2a_61063231723b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id3ca0edbd-cf04-426f-9a2a-61063231723b'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Machine Learning - Event Hubs'
    description: 'Audit diagnostic settings for Azure Machine Learning - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.MachineLearningServices/workspaces'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource idf02e985a_c8af_4843_84a0_2337b0d731b8 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idf02e985a-c8af-4843-84a0-2337b0d731b8'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Notification Hub Namespaces - Event Hubs'
    description: 'Audit diagnostic settings for Azure Notification Hub Namespaces - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.NotificationHubs/namespaces'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id485b814e_7682_4d37_b7e2_20c0f0729a16 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id485b814e-7682-4d37-b7e2-20c0f0729a16'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Power BI Embedded - Event Hubs'
    description: 'Audit diagnostic settings for Azure Power BI Embedded - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.PowerBIDedicated/capacities'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id38742f5b_7aa5_472c_959c_d4c30ffbf910 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id38742f5b-7aa5-472c-959c-d4c30ffbf910'
  properties: {
    displayName: 'Audit diagnostic settings for Purview Accounts - Event Hubs'
    description: 'Audit diagnostic settings for Purview Accounts - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Purview/accounts'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id20fc007e_21df_4b95_8bb5_091e3c4a2157 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id20fc007e-21df-4b95-8bb5-091e3c4a2157'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Redis Cache - Event Hubs'
    description: 'Audit diagnostic settings for Azure Redis Cache - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Cache/redis'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id869b80d2_7ce6_4fd9_a056_9ba16d6902b2 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id869b80d2-7ce6-4fd9-a056-9ba16d6902b2'
  properties: {
    displayName: 'Audit diagnostic settings for Service Bus Namespaces - Event Hubs'
    description: 'Audit diagnostic settings for Service Bus Namespaces - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.ServiceBus/namespaces'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id498dd046_00e1_45bc_addd_6a5aaacacd4b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id498dd046-00e1-45bc-addd-6a5aaacacd4b'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Storage Accounts - Event Hubs'
    description: 'Audit diagnostic settings for Azure Storage Accounts - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Storage/storageAccounts'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource idfdcc1d5f_febb_4926_a8d5_3fbeb3eb7a46 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idfdcc1d5f-febb-4926-a8d5-3fbeb3eb7a46'
  properties: {
    displayName: 'Audit diagnostic settings for Stream Analytics - Event Hubs'
    description: 'Audit diagnostic settings for Stream Analytics - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.StreamAnalytics/streamingjobs'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource idf495789a_2544_4b0d_9bb1_338e9b550581 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idf495789a-2544-4b0d-9bb1-338e9b550581'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Synapse Workspaces - Event Hubs'
    description: 'Audit diagnostic settings for Azure Synapse Workspaces - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      azureRegions: {
        type: 'Array'
        metadata: {
          displayName: 'Allowed Locations'
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
        }
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Synapse/workspaces'
          }
          {
            field: 'location'
            in: '[parameters(\'azureRegions\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: '[parameters(\'logsEnabled\')]'
                      }
                    ]
                  }
                }
                equals: 6
              }
            ]
          }
        }
      }
    }
  }
}

resource idcd283c24_208f_4763_ad9c_2ad500003f42 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idcd283c24-208f-4763-ad9c-2ad500003f42'
  properties: {
    displayName: 'Audit diagnostic settings for Traffic Manager Profiles - Event Hubs'
    description: 'Audit diagnostic settings for Traffic Manager Profiles - Event Hubs'
    policyType: 'Custom'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'Indexed'
    parameters: {
      eventHubName: {
        type: 'String'
        metadata: {
          displayName: 'EventHub Name'
          description: 'The event hub for Azure Diagnostics'
          strongType: 'Microsoft.EventHub/Namespaces/EventHubs'
          assignPermissions: true
        }
      }
      metricsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Metrics'
          description: 'Enable Metrics - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable Logs'
          description: 'Enable Logs - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/trafficManagerProfiles'
          }
          {
            field: 'location'
            equals: 'Global'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/eventHubName'
                equals: '[last(split(parameters(\'eventHubName\'), \'/\'))]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'metricsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}
