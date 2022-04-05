targetScope = 'subscription'

resource idd37bda6f_e017_44f4_8c1a_d4f5efb08559 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idd37bda6f-e017-44f4-8c1a-d4f5efb08559'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Analysis Services - Log Analytics'
    description: 'Audit diagnostic settings for Azure Analysis Services - Log Analytics'
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
        equals: 'Microsoft.AnalysisServices/servers'
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

resource id47218225_e5d8_4239_b5a2_39bd0a54bef2 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id47218225-e5d8-4239-b5a2-39bd0a54bef2'
  properties: {
    displayName: 'Audit diagnostic settings for Azure App Service Plans - Log Analytics'
    description: 'Audit diagnostic settings for Azure App Service Plans - Log Analytics'
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
        equals: 'Microsoft.Web/serverfarms'
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

resource id24a9f5dc_03ef_46b6_a1f3_cdce02b4378e 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id24a9f5dc-03ef-46b6-a1f3-cdce02b4378e'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Automation Accounts - Log Analytics'
    description: 'Audit diagnostic settings for Azure Automation Accounts - Log Analytics'
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
        equals: 'Microsoft.Automation/automationAccounts'
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

resource id44d8103b_dc54_4a20_9768_6c296c336297 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id44d8103b-dc54-4a20-9768-6c296c336297'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Container Instances - Log Analytics'
    description: 'Audit diagnostic settings for Azure Container Instances - Log Analytics'
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
        equals: 'Microsoft.ContainerInstance/containerGroups'
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

resource idb3ebe36c_a614_4fb9_bd8a_59be67bcb753 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idb3ebe36c-a614-4fb9-bd8a-59be67bcb753'
  properties: {
    displayName: 'Audit diagnostic settings for MySQL Databases - Log Analytics'
    description: 'Audit diagnostic settings for MySQL Databases - Log Analytics'
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
        equals: 'Microsoft.DBforMySQL/servers'
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

resource id6fbc74e3_562e_478d_9df2_8f9872fc4b10 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id6fbc74e3-562e-478d-9df2-8f9872fc4b10'
  properties: {
    displayName: 'Audit diagnostic settings for PostgreSQL Databases - Log Analytics'
    description: 'Audit diagnostic settings for PostgreSQL Databases - Log Analytics'
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
        equals: 'Microsoft.DBforPostgreSQL/servers'
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

resource iddcf1a261_c363_48b3_9743_925a087fd2bd 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'iddcf1a261-c363-48b3-9743-925a087fd2bd'
  properties: {
    displayName: 'Audit diagnostic settings for Data Factory - Log Analytics'
    description: 'Audit diagnostic settings for Data Factory - Log Analytics'
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
        equals: 'Microsoft.DataFactory/factories'
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

resource ided9a8910_08d0_4389_bfcf_d7af6f952861 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'ided9a8910-08d0-4389-bfcf-d7af6f952861'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Kubernetes Service - Log Analytics'
    description: 'Audit diagnostic settings for Azure Kubernetes Service - Log Analytics'
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
        equals: 'Microsoft.ContainerService/managedClusters'
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

resource id09ae37a8_f49d_4a34_a9df_7eb3712a3ff9 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id09ae37a8-f49d-4a34-a9df-7eb3712a3ff9'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Relay - Log Analytics'
    description: 'Audit diagnostic settings for Azure Relay - Log Analytics'
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
        equals: 'Microsoft.Relay/namespaces'
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

resource id0c826577_1e85_4a69_a4fe_e60bbb701349 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0c826577-1e85-4a69-a4fe-e60bbb701349'
  properties: {
    displayName: 'Audit diagnostic settings for SQL Databases - Log Analytics'
    description: 'Audit diagnostic settings for SQL Databases - Log Analytics'
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
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Sql/servers/databases'
          }
          {
            field: 'Microsoft.Sql/servers/databases/sku.tier'
            notEquals: 'DataWarehouse'
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
                        notEquals: 'SQLSecurityAuditEvents'
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
                  contains: 'false'
                }
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

resource id605ad427_3735_4141_b970_07d1bce16ab2 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id605ad427-3735-4141-b970-07d1bce16ab2'
  properties: {
    displayName: 'Audit diagnostic settings for SQL Elastic Pools - Log Analytics'
    description: 'Audit diagnostic settings for SQL Elastic Pools - Log Analytics'
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
        equals: 'Microsoft.Sql/servers/elasticPools'
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

resource idfbc56bbd_b7a0_4c83_bc1e_61698e44fda7 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idfbc56bbd-b7a0-4c83-bc1e-61698e44fda7'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Batch accounts - Log Analytics'
    description: 'Audit diagnostic settings for Azure Batch accounts - Log Analytics'
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
        equals: 'Microsoft.Batch/batchAccounts'
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

resource idd0555f74_bebb_4475_a9f5_1bb9768e88ce 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idd0555f74-bebb-4475-a9f5-1bb9768e88ce'
  properties: {
    displayName: 'Audit diagnostic settings for CDN Endpoints - Log Analytics'
    description: 'Audit diagnostic settings for CDN Endpoints - Log Analytics'
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
        equals: 'Microsoft.Cdn/profiles/endpoints'
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

resource id68679b11_5591_4b30_811d_90dd7db316bf 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id68679b11-5591-4b30-811d-90dd7db316bf'
  properties: {
    displayName: 'Audit diagnostic settings for Data Factory - Log Analytics'
    description: 'Audit diagnostic settings for Data Factory - Log Analytics'
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
            equals: 'Microsoft.DataFactory/factories'
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

resource id3d870ee2_3a7e_4a70_a2b4_e55b3e5a7444 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id3d870ee2-3a7e-4a70-a2b4-e55b3e5a7444'
  properties: {
    displayName: 'Audit diagnostic settings for Data Lake Analytics - Log Analytics'
    description: 'Audit diagnostic settings for Data Lake Analytics - Log Analytics'
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
        equals: 'Microsoft.DataLakeAnalytics/accounts'
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

resource id29c9b4ec_aee0_40dd_800e_ea1f6287453d 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id29c9b4ec-aee0-40dd-800e-ea1f6287453d'
  properties: {
    displayName: 'Audit diagnostic settings for Data Lake Storage - Log Analytics'
    description: 'Audit diagnostic settings for Data Lake Storage - Log Analytics'
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
        equals: 'Microsoft.DataLakeStore/accounts'
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

resource idb6635f7c_81b4_4fcf_8ab9_407987a0506b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idb6635f7c-81b4-4fcf-8ab9-407987a0506b'
  properties: {
    displayName: 'Audit diagnostic settings for Event Grid Subscriptions - Log Analytics'
    description: 'Audit diagnostic settings for Event Grid Subscriptions - Log Analytics'
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
        equals: 'Microsoft.EventGrid/eventSubscriptions'
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

resource id17f11361_5d95_4270_acd0_41d4cd4cbd80 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id17f11361-5d95-4270-acd0-41d4cd4cbd80'
  properties: {
    displayName: 'Audit diagnostic settings for Event Grid Topics - Log Analytics'
    description: 'Audit diagnostic settings for Event Grid Topics - Log Analytics'
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
        equals: 'Microsoft.EventGrid/topics'
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

resource id16c303e3_6c1d_4892_b6d6_612ff2bb333f 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id16c303e3-6c1d-4892-b6d6-612ff2bb333f'
  properties: {
    displayName: 'Audit diagnostic settings for Express Routes Circuits - Log Analytics'
    description: 'Audit diagnostic settings for Express Routes Circuits - Log Analytics'
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
        equals: 'Microsoft.Network/expressRouteCircuits'
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

resource idfa1cb604_f290_410c_b31e_feff8585cb23 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idfa1cb604-f290-410c-b31e-feff8585cb23'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Firewalls - Log Analytics'
    description: 'Audit diagnostic settings for Azure Firewalls - Log Analytics'
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
            equals: 'Microsoft.Network/azureFirewalls'
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

resource id332a9b2c_0874_441c_a6b9_db4f3e138369 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id332a9b2c-0874-441c-a6b9-db4f3e138369'
  properties: {
    displayName: 'Audit diagnostic settings for HDInsight - Log Analytics'
    description: 'Audit diagnostic settings for HDInsight - Log Analytics'
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
            equals: 'Microsoft.HDInsight/clusters'
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

resource id808b4892_842e_421f_8d75_f08bc8e6261c 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id808b4892-842e-421f-8d75-f08bc8e6261c'
  properties: {
    displayName: 'Audit diagnostic settings for Load Balancers - Log Analytics'
    description: 'Audit diagnostic settings for Load Balancers - Log Analytics'
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
            equals: 'Microsoft.Network/loadBalancers'
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

resource idbd7df320_cdc8_4c21_957b_d9aaf16f2d14 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idbd7df320-cdc8-4c21-957b-d9aaf16f2d14'
  properties: {
    displayName: 'Audit diagnostic settings for Logic Apps - Log Analytics'
    description: 'Audit diagnostic settings for Logic Apps - Log Analytics'
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
            equals: 'Microsoft.Logic/workflows'
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

resource id3ff07f05_a6d4_4695_a914_926993b3e336 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id3ff07f05-a6d4-4695-a914-926993b3e336'
  properties: {
    displayName: 'Audit diagnostic settings for Logic Apps Integration Accounts - Log Analytics'
    description: 'Audit diagnostic settings for Logic Apps Integration Accounts - Log Analytics'
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
            equals: 'Microsoft.Logic/integrationAccounts'
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
            ]
          }
        }
      }
    }
  }
}

resource id786fe980_0298_4c9f_8481_153c4e3a187c 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id786fe980-0298-4c9f-8481-153c4e3a187c'
  properties: {
    displayName: 'Audit diagnostic settings for Network Interfaces - Log Analytics'
    description: 'Audit diagnostic settings for Network Interfaces - Log Analytics'
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
            equals: 'Microsoft.Network/networkInterfaces'
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

resource id1234aa92_caa7_41f6_ab22_652a0290bf9c 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id1234aa92-caa7-41f6-ab22-652a0290bf9c'
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
      logsEnabled: {
        type: 'String'
        metadata: {
          displayName: 'Enable logs'
          description: 'Whether to enable logs stream to the Event Hub  - True or False'
        }
        allowedValues: [
          'True'
          'False'
        ]
        defaultValue: 'True'
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
                equals: '[parameters(\'logsEnabled\')]'
              }
              {
                field: 'Microsoft.Insights/diagnosticSettings/metrics.enabled'
                equals: '[parameters(\'logsEnabled\')]'
              }
            ]
          }
        }
      }
    }
  }
}

resource id6ede93a7_fa7d_4d59_9fe1_f8d9ea5f1df8 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id6ede93a7-fa7d-4d59-9fe1-f8d9ea5f1df8'
  properties: {
    displayName: 'Audit diagnostic settings for Power BI Embedded - Log Analytics'
    description: 'Audit diagnostic settings for Power BI Embedded - Log Analytics'
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
            equals: 'Microsoft.PowerBIDedicated/capacities'
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
                field: 'Microsoft.Insights/diagnosticSettings/logs[*].enabled'
                equals: 'true'
              }
            ]
          }
        }
      }
    }
  }
}
resource idf80987bd_db14_45f1_8061_bfbc8b09de7a 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idf80987bd-db14-45f1-8061-bfbc8b09de7a'
  properties: {
    displayName: 'Audit diagnostic settings for Redis Cache - Log Analytics'
    description: 'Audit diagnostic settings for Redis Cache - Log Analytics'
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
            equals: 'Microsoft.Cache/redis'
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

resource id367d12c9_761d_4729_acb3_03e43d486657 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id367d12c9-761d-4729-acb3-03e43d486657'
  properties: {
    displayName: 'Audit diagnostic settings for Search Services - Log Analytics'
    description: 'Audit diagnostic settings for Search Services - Log Analytics'
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
            equals: 'Microsoft.Search/searchServices'
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

resource id38c5f0f6_99cf_4fc7_a652_0f65e96c3dc0 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id38c5f0f6-99cf-4fc7-a652-0f65e96c3dc0'
  properties: {
    displayName: 'Audit diagnostic settings for Service Bus Namespaces - Log Analytics'
    description: 'Audit diagnostic settings for Service Bus Namespaces - Log Analytics'
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
            equals: 'Microsoft.ServiceBus/namespaces'
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

resource id0a42754d_0fc3_4592_9e3b_d03268abd97e 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0a42754d-0fc3-4592-9e3b-d03268abd97e'
  properties: {
    displayName: 'Audit diagnostic settings for SignalR - Log Analytics'
    description: 'Audit diagnostic settings for SignalR - Log Analytics'
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
            equals: 'Microsoft.SignalRService/SignalR'
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

resource id23ea7768_5609_45e3_b5f5_2e97000623d9 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id23ea7768-5609-45e3-b5f5-2e97000623d9'
  properties: {
    displayName: 'Audit diagnostic settings for Stream Analytics - Log Analytics'
    description: 'Audit diagnostic settings for Stream Analytics - Log Analytics'
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
            equals: 'Microsoft.StreamAnalytics/streamingjobs'
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

resource id7d936102_76d0_4abe_a4ce_562b67f365a8 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id7d936102-76d0-4abe-a4ce-562b67f365a8'
  properties: {
    displayName: 'Audit diagnostic settings for Time Series Insights - Log Analytics'
    description: 'Audit diagnostic settings for Time Series Insights - Log Analytics'
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
            equals: 'Microsoft.TimeSeriesInsights/environments'
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

resource id18300b89_4b0a_47ae_8a69_6d0abc6f6470 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id18300b89-4b0a-47ae-8a69-6d0abc6f6470'
  properties: {
    displayName: 'Audit diagnostic settings for Traffic Manager Profiles - Log Analytics'
    description: 'Audit diagnostic settings for Traffic Manager Profiles - Log Analytics'
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
            equals: 'Microsoft.Network/trafficManagerProfiles'
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

resource id1e912755_9627_4627_92f3_d192616c6299 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id1e912755-9627-4627-92f3-d192616c6299'
  properties: {
    displayName: 'Audit diagnostic settings for Virtual Network Gateways - Log Analytics'
    description: 'Audit diagnostic settings for Virtual Network Gateways - Log Analytics'
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
            equals: 'Microsoft.Network/virtualNetworkGateways'
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

resource id0e7e7605_6afd_4094_8ca0_0ad9820ef222 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id0e7e7605-6afd-4094-8ca0-0ad9820ef222'
  properties: {
    displayName: 'Audit diagnostic settings for Azure Web Sites - Log Analytics'
    description: 'Audit diagnostic settings for Azure Web Sites - Log Analytics'
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
