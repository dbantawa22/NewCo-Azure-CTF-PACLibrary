targetScope = 'managementGroup'

resource id3beb127f_5679_49e4_b856_3333dd877dc5 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id3beb127f-5679-49e4-b856-3333dd877dc5'
  properties: {
    displayName: 'Audit - \'CanNotDelete\' Locks should be enabled on required Log Analytics Workspaces'
    description: 'This policy audits required Log Analytics workspaces that do not have the \'CanNotDelete\' Lock enabled. Within the Locks Settings, ensure that the Lock type \'Delete\' is created. If it is not created, you will be out of compliance.'
    metadata: {
      category: 'Avanade: Global'
    }
    mode: 'all'
    parameters: {
      logAnalyticsWorkspaceId: {
        type: 'String'
        metadata: {
          displayName: 'Log Analytics Workspace ID or Customer ID'
          description: 'Customer ID for Log Analytics Workspace'
        }
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
            field: 'Microsoft.OperationalInsights/workspaces/customerId'
            equals: '[parameters(\'logAnalyticsWorkspaceId\')]'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Authorization/locks'
          existenceCondition: {
            field: 'Microsoft.Authorization/locks/level'
            equals: 'CanNotDelete'
          }
        }
      }
    }
  }
}

resource idcd0ed746_a30c_4fa6_a844_c8b97e65ee30 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idcd0ed746-a30c-4fa6-a844-c8b97e65ee30'
  properties: {
    mode: 'indexed'
    metadata: {
      category: 'Avanade: Global'
    }
    parameters: {
      allowedLocations: {
        type: 'Array'
        metadata: {
          description: 'The list of locations that can be specified when deploying resources'
          strongType: 'location'
          displayName: 'Allowed locations'
        }
      }
    }
    displayName: 'Allowed locations - Audit'
    description: 'This policy enables you to restrict the locations your organization can specify when deploying resources.'
    policyRule: {
      if: {
        not: {
          field: 'location'
          in: '[parameters(\'allowedLocations\')]'
        }
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource idac8687dc_9f42_4b2e_88d1_59656b71e3df 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idac8687dc-9f42-4b2e-88d1-59656b71e3df'
  properties: {
    mode: 'indexed'
    metadata: {
      category: 'Avanade: Global'
    }
    parameters: {
      deniedLocations: {
        type: 'Array'
        metadata: {
          description: 'The list of locations that can NOT be specified when deploying resources'
          strongType: 'location'
          displayName: 'Denied locations'
        }
      }
    }
    displayName: 'Audit Resources deployed to restricted (denied) locations.'
    description: 'This policy enables you to restrict the locations your organization can specify when deploying resources.'
    policyRule: {
      if: {
        field: 'location'
        in: '[parameters(\'deniedLocations\')]'
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource id5b411006_0ae7_4338_a4f7_14dbcbd7d33d 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id5b411006_0ae7_4338_a4f7_14dbcbd7d33d'
    properties: {
      displayName: 'Allowed resource types'
      policyType: 'Custom'
      mode: 'Indexed'
      description: 'This policy enables you to specify the resource types that your organization can deploy. Only resource types that support \'tags\' and \'location\' will be affected by this policy. To restrict all resources please duplicate this policy and change the \'mode\' to \'All\'.'
      metadata: {
        version: '1.0.0'
        category: 'Avanade: Global'
      }
      parameters: {
        listOfResourceTypesAllowed: {
          type: 'Array'
          metadata: {
            description: 'The list of resource types that can be deployed.'
            displayName: 'Allowed resource types'
            strongType: 'resourceTypes'
          }
        }
      }
      policyRule: {
        if: {
          not: {
            field: 'type'
            in: '[parameters(\'listOfResourceTypesAllowed\')]'
          }
        }
        then: {
          effect: 'audit'
        }
      }
    }
}

