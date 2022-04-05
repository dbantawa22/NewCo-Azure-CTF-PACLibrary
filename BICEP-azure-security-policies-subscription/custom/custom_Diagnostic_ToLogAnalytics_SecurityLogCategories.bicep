targetScope = 'subscription'

resource id609b4b87_0a28_49cb_9867_497e5caadb29 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id609b4b87-0a28-49cb-9867-497e5caadb29'
  properties: {
    displayName: 'Audit diagnostic settings for Api Apps - Log Analytics'
    description: 'Audit diagnostic settings for Api Apps - Log Analytics'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'kind'
            like: '*api'
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
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceHTTPLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceConsoleLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceAppLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceFileAuditLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServicePlatformLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id8a95f413_5bf7_4f90_9a17_3b23afc7246c 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id8a95f413-5bf7-4f90-9a17-3b23afc7246c'
  properties: {
    displayName: 'Audit diagnostic settings for API Management services - Log Analytics'
    description: 'Audit diagnostic settings for API Management services - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.ApiManagement/service'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                equals: 'GatewayLogs'
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource ide80f86f8_e86c_4b6e_b3ab_19425554b2ce 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'ide80f86f8-e86c-4b6e-b3ab-19425554b2ce'
  properties: {
    displayName: 'Audit diagnostic settings for Application Gateways - Log Analytics'
    description: 'Audit diagnostic settings for Application Gateways - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Network/applicationGateways'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'ApplicationGatewayPerformanceLog'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource idfc644413_4cf7_4b80_8a17_3b23afc5234f 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idfc644413-4cf7-4b80-8a17-3b23afc5234f'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Firewall services - Log Analytics'
    description: 'Audit diagnostic settings for Azure Firewall services - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Network/azureFirewalls'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                equals: 'true'
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id4fdcc416_4ff7_4b80_7a17_3c23aff5f234 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id4fdcc416-4ff7-4b80-7a17-3c23aff5f234'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Front Door services - Log Analytics'
    description: 'Audit diagnostic settings for Azure Front Door services - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Network/frontdoors'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                equals: 'true'
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id4b95f413_5cf7_4b90_8a17_3b23afc7247b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id4b95f413-5cf7-4b90-8a17-3b23afc7247b'
  properties: {
    displayName: 'Audit diagnostic settings for Bastion services - Log Analytics'
    description: 'Audit diagnostic settings for Bastion services - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Network/bastionHosts'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                equals: 'BastionAuditLogs'
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id5c7cc413_4cf7_4b80_8a17_3b23afc5244c 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id5c7cc413-4cf7-4b80-8a17-3b23afc5244c'
  properties: {
    displayName: 'Audit diagnostic settings for CDN profile services - Log Analytics'
    description: 'Audit diagnostic settings for CDN profile services - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Cdn/profiles'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                equals: 'AzureCdnAccessLog'
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id109080dd_4049_4361_92bb_3e98ca468bd4 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id109080dd-4049-4361-92bb-3e98ca468bd4'
  properties: {
    displayName: 'Audit diagnostic settings for Cognitive Services - Log Analytics'
    description: 'Audit diagnostic settings for Cognitive Services - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.CognitiveServices/accounts'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'RequestResponse'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'Trace'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id70a37c1b_8c2d_421b_9319_551ddfb1728e 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id70a37c1b-8c2d-421b-9319-551ddfb1728e'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Container Registries - Log Analytics'
    description: 'Audit diagnostic settings for Azure Container Registries - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.ContainerRegistry/registries'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'ContainerRegistryRepositoryEvents'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource ida97e86aa_43f5_4086_aca7_ab95aa7041ce 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'ida97e86aa-43f5-4086-aca7-ab95aa7041ce'
  properties: {
    displayName: 'Audit diagnostic settings for Cosmos DB - Log Analytics'
    description: 'Audit diagnostic settings for Cosmos DB - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.DocumentDB/databaseAccounts'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'DataPlaneRequests'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'MongoRequests'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'QueryRuntimeStatistics'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'PartitionKeyStatistics'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'PartitionKeyRUConsumption'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'CassandraRequests'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'GremlinRequests'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'TableApiRequests'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id25f0fc8a_7e3a_4b3a_82cf_b6dad1481c09 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id25f0fc8a-7e3a-4b3a-82cf-b6dad1481c09'
  properties: {
    displayName: 'Audit diagnostic settings for Event Hub Namespaces - Log Analytics'
    description: 'Audit diagnostic settings for Event Hub Namespaces - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.EventHub/namespaces'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'ArchiveLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'OperationalLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AutoScaleLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'KafkaCoordinatorLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'KafkaUserErrorLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id75dde235_78df_40bb_a36c_39edbc0920dc 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id75dde235-78df-40bb-a36c-39edbc0920dc'
  properties: {
    displayName: 'Audit diagnostic settings for IoT Hubs - Log Analytics'
    description: 'Audit diagnostic settings for IoT Hubs - Log Analytics'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Devices/IotHubs'
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
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'DeviceTelemetry'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'C2DCommands'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'DeviceIdentityOperations'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'FileUploadOperations'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'D2CTwinOperations'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'C2DTwinOperations'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'TwinQueries'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'JobsOperations'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'DirectMethods'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'DistributedTracing'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'Configurations'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'DeviceStreams'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id1416b52d_8048_4203_944f_fba2e7ee63de 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id1416b52d-8048-4203-944f-fba2e7ee63de'
  properties: {
    displayName: 'Audit diagnostic settings for Key Vaults - Log Analytics'
    description: 'Audit diagnostic settings for Key Vaults - Log Analytics'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.KeyVault/vaults'
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
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: 'true'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: 'true'
              }
            ]
          }
        }
      }
    }
  }
}

resource id4fb13633_bcc2_47bf_b1db_c90741fdab30 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: '4fb13633-bcc2-47bf-b1db-c90741fdab30'
  properties: {
    displayName: 'Audit Diagnostic Settings for NSG to Log Analytics'
    description: 'Audits the diagnostic settings for NSG to stream to a Log Analytics Workspace on any NSG which is missing this diagnostic settings is created or updated.'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Network/networkSecurityGroups'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: 'true'
              }
            ]
          }
        }
      }
    }
  }
}

resource idfc4faee8_2990_4702_8187_5c276a42fbd3 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idfc4faee8-2990-4702-8187-5c276a42fbd3'
  properties: {
    displayName: 'Audit diagnostic settings for Public IPs - Log Analytics'
    description: 'Audit diagnostic settings for Public IPs - Log Analytics'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/publicIPAddresses'
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
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: 'true'
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource iddeec929b_7110_4657_acf0_2e8a0160be94 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'iddeec929b-7110-4657-acf0-2e8a0160be94'
  properties: {
    displayName: 'Audit diagnostic settings for Recovery Vaults - Log Analytics'
    description: 'Audit diagnostic settings for Recovery Vaults - Log Analytics'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.RecoveryServices/vaults'
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
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AzureBackupReport'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'CoreAzureBackup'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AddonAzureBackupJobs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AddonAzureBackupAlerts'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AddonAzureBackupStorage'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AzureSiteRecoveryJobs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AzureSiteRecoveryEvents'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AzureSiteRecoveryReplicatedItems'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AzureSiteRecoveryReplicationStats'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AzureSiteRecoveryRecoveryPoints'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AzureSiteRecoveryReplicationDataUploadRate'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
            ]
          }
        }
      }
    }
  }
}

resource ida58dfa62_17c9_4218_8546_3418d5ceaec5 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'ida58dfa62-17c9-4218-8546-3418d5ceaec5'
  properties: {
    displayName: 'Audit diagnostic settings for SQL Managed Instances - Log Analytics'
    description: 'Audit diagnostic settings for SQL Managed Instances - Log Analytics'
    metadata: {
      category: 'Avanade: Monitoring'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    policyRule: {
      if: {
        field: 'type'
        equals: 'Microsoft.Sql/managedInstances'
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Insights/diagnosticSettings'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'ResourceUsageStats'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'DevOpsOperationsAudit'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource ida36fd6c9_a6ba_44da_a0ba_517b363040f9 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'ida36fd6c9-a6ba-44da-a0ba-517b363040f9'
  properties: {
    displayName: 'Audit diagnostic settings for Virtual Networks - Log Analytics'
    description: 'Audit diagnostic settings for Virtual Networks - Log Analytics'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/virtualNetworks'
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
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/logs.enabled'
                equals: 'true'
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}

resource id0e7e7605_6afd_4094_8ca0_0ad9820ef222 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0e7e7605-6afd-4094-8ca0-0ad9820ef222'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Web Apps - Log Analytics'
    description: 'Audit diagnostic settings for Azure Web Apps - Log Analytics'
    parameters: {
      logAnalyticsWorkspace: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics workspace'
          description: 'Select the Log Analytics workspace from dropdown list'
          strongType: 'omsWorkspace'
        }
      }
    }
    metadata: {
      category: 'Avanade: Monitoring'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'kind'
            like: 'app*'
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
                field: 'Microsoft.Insights/diagnosticSettings/workspaceId'
                equals: '[parameters(\'logAnalyticsWorkspace\')]'
              }
              {
                count: {
                  field: 'Microsoft.Insights/diagnosticSettings/logs[*]'
                  where: {
                    allOf: [
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceHTTPLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceConsoleLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceAppLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServiceFileAuditLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].category'
                        notEquals: 'AppServicePlatformLogs'
                      }
                      {
                        field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                        equals: 'false'
                      }
                    ]
                  }
                }
                equals: 0
              }
              {
                not: {
                  field: 'Microsoft.Insights/diagnosticSettings/metrics[*].enabled'
                  contains: 'true'
                }
              }
            ]
          }
        }
      }
    }
  }
}
