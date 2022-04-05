targetScope = 'subscription'

resource idad41122a_ef15_445d_81be_e8b48ea240ce 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idad41122a-ef15-445d-81be-e8b48ea240ce'
  properties: {
    displayName: 'Audit - Application Gateway Backend HTTPS should be enabled'
    description: 'This policy audits if HTTPS is configured for BackendHTTPSetting. If not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Network'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/applicationGateways'
          }
          {
            not: {
              field: 'Microsoft.Network/applicationGateways/backendHttpSettingsCollection[*].protocol'
              notContains: 'HTTPS'
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

resource idd2c9c631_f882_476c_888b_c9d95f09bbab 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idd2c9c631-f882-476c-888b-c9d95f09bbab'
  properties: {
    displayName: 'Audit - Application Gateway should not be the TLS Version of 1.0'
    description: 'This policy audits if SSL is not configured to TLS 1.1 or higher. If not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Network'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/applicationGateways'
          }
          {
            anyOf: [
              {
                field: 'Microsoft.Network/applicationGateways/sslPolicy.minProtocolVersion'
                equals: 'TLSv1_0'
              }
              {
                field: 'Microsoft.Network/applicationGateways/sslPolicy.policyName'
                equals: 'AppGwSslPolicy20150501'
              }
              {
                field: 'Microsoft.Network/applicationGateways/sslPolicy'
                exists: 'false'
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

resource id96dba2bf_0e77_403f_a586_70eec15be753 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id96dba2bf-0e77-403f-a586-70eec15be753'
  properties: {
    displayName: 'Audit - Application Gateway WAF Prevention should be enabled'
    description: 'This policy audits if WAFs are disabled and if the WAFs are not configured to \'Prevention\' mode. If both are not configured properly, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Network'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/applicationGateways'
          }
          {
            not: {
              field: 'Microsoft.Network/applicationGateways/webApplicationFirewallConfiguration.firewallMode'
              equals: 'Prevention'
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

resource id6cb88261_4ca4_4dcf_8c2e_a9c3b7b6e967 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id6cb88261-4ca4-4dcf-8c2e-a9c3b7b6e967'
  properties: {
    displayName: 'Audit Traffic Manager Protocol Endpoint that does not have \'Https Only\' enabled'
    description: 'This policy audits if HTTPS protocol is being used for Endpoint monitoring for Traffic Manager. If it is not, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Network'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/trafficmanagerprofiles'
          }
          {
            field: 'Microsoft.Network/trafficmanagerprofiles/monitorConfig.protocol'
            notEquals: 'HTTPS'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource idb07c0e32_dbc6_41a7_b5f5_ebc913729d8e 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idb07c0e32-dbc6-41a7-b5f5-ebc913729d8e'
  properties: {
    displayName: 'Audit Virtual Network Peering between multiple Virtual Networks'
    description: 'This policy audits any peerings provisioned between this VNet and another. If there are, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Network'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings'
          }
          {
            field: 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings/allowVirtualNetworkAccess'
            equals: 'true'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
