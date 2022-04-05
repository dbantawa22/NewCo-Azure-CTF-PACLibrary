targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource idd6fe50db_a8ce_4b81_b94b_8c1a78399092 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idd6fe50db-a8ce-4b81-b94b-8c1a78399092'
	scope: managementGroup(variables.scope)
}

resource id2a9f8e40_4bce_4cb0_8517_8372b6728cd3 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id2a9f8e40-4bce-4cb0-8517-8372b6728cd3'
	scope: managementGroup(variables.scope)
}

resource id011d4994_a35b_4354_843e_edf80c5bdd8d 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id011d4994-a35b-4354-843e-edf80c5bdd8d'
	scope: managementGroup(variables.scope)
}

resource id8a90f02a_28bc_401f_87bf_bdf75c18690b 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id8a90f02a-28bc-401f-87bf-bdf75c18690b'
	scope: managementGroup(variables.scope)
}

resource ide9e24d78_25b6_48d8_86d5_967a18745d5e 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'ide9e24d78-25b6-48d8-86d5-967a18745d5e'
	scope: managementGroup(variables.scope)
}

resource id90c8d929_8e63_47d8_8822_c1d6fa087777 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id90c8d929-8e63-47d8-8822-c1d6fa087777'
	scope: managementGroup(variables.scope)
}

resource idefefb89f_e1c1_460a_8fa1_e6c1e9b359e9 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idefefb89f-e1c1-460a-8fa1-e6c1e9b359e9'
	scope: managementGroup(variables.scope)
}

resource idfbb8683e_aa67_4c5d_be6b_933fa12b0a40 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idfbb8683e-aa67-4c5d-be6b-933fa12b0a40'
	scope: managementGroup(variables.scope)
}

resource id21376ad7_d1ca_4112_841b_a2a0fd574627 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id21376ad7-d1ca-4112-841b-a2a0fd574627'
	scope: managementGroup(variables.scope)
}

resource id89b2d567_ada6_4ffb_bdd1_93a141a00e45 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id89b2d567-ada6-4ffb-bdd1-93a141a00e45'
	scope: managementGroup(variables.scope)
}

resource id5d3925c0_fb4a_4f2c_8eb6_37e38ed73287 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id5d3925c0-fb4a-4f2c-8eb6-37e38ed73287'
	scope: managementGroup(variables.scope)
}

resource id6f8a86b5_7e13_464d_a717_f30fbabc65d8 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id6f8a86b5-7e13-464d-a717-f30fbabc65d8'
	scope: managementGroup(variables.scope)
}

resource id60fa0438_e3cd_41cb_be14_11208b47df9a 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id60fa0438-e3cd-41cb-be14-11208b47df9a'
	scope: managementGroup(variables.scope)
}

resource id84a5a2ce_4afb_415a_9ec3_e2cd85aba632 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id84a5a2ce-4afb-415a-9ec3-e2cd85aba632'
	scope: managementGroup(variables.scope)
}

resource id3ca0edbd_cf04_426f_9a2a_61063231723b 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id3ca0edbd-cf04-426f-9a2a-61063231723b'
	scope: managementGroup(variables.scope)
}

resource idf02e985a_c8af_4843_84a0_2337b0d731b8 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idf02e985a-c8af-4843-84a0-2337b0d731b8'
	scope: managementGroup(variables.scope)
}

resource id485b814e_7682_4d37_b7e2_20c0f0729a16 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id485b814e-7682-4d37-b7e2-20c0f0729a16'
	scope: managementGroup(variables.scope)
}

resource id38742f5b_7aa5_472c_959c_d4c30ffbf910 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id38742f5b-7aa5-472c-959c-d4c30ffbf910'
	scope: managementGroup(variables.scope)
}

resource id20fc007e_21df_4b95_8bb5_091e3c4a2157 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id20fc007e-21df-4b95-8bb5-091e3c4a2157'
	scope: managementGroup(variables.scope)
}

resource id869b80d2_7ce6_4fd9_a056_9ba16d6902b2 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id869b80d2-7ce6-4fd9-a056-9ba16d6902b2'
	scope: managementGroup(variables.scope)
}

resource id498dd046_00e1_45bc_addd_6a5aaacacd4b 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id498dd046-00e1-45bc-addd-6a5aaacacd4b'
	scope: managementGroup(variables.scope)
}

resource idfdcc1d5f_febb_4926_a8d5_3fbeb3eb7a46 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idfdcc1d5f-febb-4926-a8d5-3fbeb3eb7a46'
	scope: managementGroup(variables.scope)
}

resource idf495789a_2544_4b0d_9bb1_338e9b550581 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idf495789a-2544-4b0d-9bb1-338e9b550581'
	scope: managementGroup(variables.scope)
}

resource idcd283c24_208f_4763_ad9c_2ad500003f42 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idcd283c24-208f-4763-ad9c-2ad500003f42'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var eventHubNameVar = '/subscriptions/e63d9fe9-8878-4c9d-96cb-fbc40e318a97/resourceGroups/AzureLogsEventHub/providers/Microsoft.EventHub/namespaces/AzureLogsEast'
param azureRegionsVar array = [
	'EastUS'
]

module custom_Diagnostic_ToEventHub_SouthCentralUS '../custom/custom_Diagnostic_ToEventHub_SouthCentralUS.bicep' = {
	name: 'custom_Diagnostic_ToEventHub_SouthCentralUS'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Diagnostic_ToEventHub_SouthCentralUS 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Diagnostic_ToEventHub_SouthCentralUS'
	dependsOn: [
		custom_Diagnostic_ToEventHub_SouthCentralUS
	]
	properties: {
		displayName: 'Avanade: Diagnostic_ToEventHub_SouthCentralUS'
		description: 'Grouping of policies that belong to the resource provider Diagnostic_ToEventHub_SouthCentralUS'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Monitoring'
		}
		policyDefinitions: [
			{
				policyDefinitionId: idd6fe50db_a8ce_4b81_b94b_8c1a78399092.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id2a9f8e40_4bce_4cb0_8517_8372b6728cd3.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id011d4994_a35b_4354_843e_edf80c5bdd8d.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id8a90f02a_28bc_401f_87bf_bdf75c18690b.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: ide9e24d78_25b6_48d8_86d5_967a18745d5e.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
				}
			}
			{
				policyDefinitionId: id90c8d929_8e63_47d8_8822_c1d6fa087777.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: idefefb89f_e1c1_460a_8fa1_e6c1e9b359e9.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: idfbb8683e_aa67_4c5d_be6b_933fa12b0a40.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id21376ad7_d1ca_4112_841b_a2a0fd574627.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id89b2d567_ada6_4ffb_bdd1_93a141a00e45.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id5d3925c0_fb4a_4f2c_8eb6_37e38ed73287.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id6f8a86b5_7e13_464d_a717_f30fbabc65d8.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id60fa0438_e3cd_41cb_be14_11208b47df9a.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id84a5a2ce_4afb_415a_9ec3_e2cd85aba632.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id3ca0edbd_cf04_426f_9a2a_61063231723b.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: idf02e985a_c8af_4843_84a0_2337b0d731b8.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id485b814e_7682_4d37_b7e2_20c0f0729a16.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id38742f5b_7aa5_472c_959c_d4c30ffbf910.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id20fc007e_21df_4b95_8bb5_091e3c4a2157.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id869b80d2_7ce6_4fd9_a056_9ba16d6902b2.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: id498dd046_00e1_45bc_addd_6a5aaacacd4b.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: idfdcc1d5f_febb_4926_a8d5_3fbeb3eb7a46.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: idf495789a_2544_4b0d_9bb1_338e9b550581.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
					azureRegions: {
						value: azureRegionsVar
					}
				}
			}
			{
				policyDefinitionId: idcd283c24_208f_4763_ad9c_2ad500003f42.id
				parameters: {
					eventHubName: {
						value: eventHubNameVar
					}
				}
			}
		]
	}
}

