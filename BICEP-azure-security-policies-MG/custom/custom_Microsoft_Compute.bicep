targetScope = 'managementGroup'

resource id2c490c0b_ceda_419f_b136_da88ae379fdb 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id2c490c0b-ceda-419f-b136-da88ae379fdb'
  properties: {
    displayName: 'Audit - Windows Virtual Machines should have AntiMalware Extension on'
    description: 'This policy audits if the Antimalware extension is disabled on Virtual Machines. If it is disabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Compute'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Compute/virtualMachines'
          }
          {
            field: 'Microsoft.Compute/virtualMachines/storageProfile.osDisk.osType'
            equals: 'Windows'
          }
        ]
      }
      then: {
        effect: 'auditIfNotExists'
        details: {
          type: 'Microsoft.Compute/virtualMachines/extensions'
          existenceCondition: {
            allOf: [
              {
                field: 'Microsoft.Compute/virtualMachines/extensions/type'
                equals: 'IaaSAntimalware'
              }
              {
                field: 'Microsoft.Compute/virtualMachines/extensions/publisher'
                equals: 'Microsoft.Azure.Security'
              }
            ]
          }
        }
      }
    }
  }
}

resource id77b6be7d_96bb_4b18_9ecc_d757961bbb39 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id77b6be7d-96bb-4b18-9ecc-d757961bbb39'
  properties: {
    displayName: 'Audit - Virtual Machines should have Automatic Updating Enabled'
    description: 'This policy audits if automatic updates on Virtual Machines is disabled. If it is disabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Compute'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Compute/virtualMachines'
          }
          {
            field: 'Microsoft.Compute/virtualMachines/osProfile.windowsConfiguration.enableAutomaticUpdates'
            notEquals: 'true'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}

resource idace216ac_e331_4850_88bf_4c875c04ac40 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'idace216ac-e331-4850-88bf-4c875c04ac40'
  properties: {
    displayName: 'Audit - Virtual Machines should have all disks encrypted.'
    description: 'This policy audits if Disk Encryption is disabled on both OS and data disks for Virtual Machines. If it is disabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: Compute'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Compute/disks'
          }
          {
            field: 'Microsoft.Compute/disks/encryptionSettings.enabled'
            equals: 'False'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
