targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource id609b4b87_0a28_49cb_9867_497e5caadb29 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id609b4b87-0a28-49cb-9867-497e5caadb29'
	scope: managementGroup(variables.scope)
}

resource id8a95f413_5bf7_4f90_9a17_3b23afc7246c 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id8a95f413-5bf7-4f90-9a17-3b23afc7246c'
	scope: managementGroup(variables.scope)
}

resource ide80f86f8_e86c_4b6e_b3ab_19425554b2ce 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'ide80f86f8-e86c-4b6e-b3ab-19425554b2ce'
	scope: managementGroup(variables.scope)
}

resource idfc644413_4cf7_4b80_8a17_3b23afc5234f 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idfc644413-4cf7-4b80-8a17-3b23afc5234f'
	scope: managementGroup(variables.scope)
}

resource id4fdcc416_4ff7_4b80_7a17_3c23aff5f234 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id4fdcc416-4ff7-4b80-7a17-3c23aff5f234'
	scope: managementGroup(variables.scope)
}

resource id4b95f413_5cf7_4b90_8a17_3b23afc7247b 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id4b95f413-5cf7-4b90-8a17-3b23afc7247b'
	scope: managementGroup(variables.scope)
}

resource id5c7cc413_4cf7_4b80_8a17_3b23afc5244c 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id5c7cc413-4cf7-4b80-8a17-3b23afc5244c'
	scope: managementGroup(variables.scope)
}

resource id109080dd_4049_4361_92bb_3e98ca468bd4 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id109080dd-4049-4361-92bb-3e98ca468bd4'
	scope: managementGroup(variables.scope)
}

resource id70a37c1b_8c2d_421b_9319_551ddfb1728e 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id70a37c1b-8c2d-421b-9319-551ddfb1728e'
	scope: managementGroup(variables.scope)
}

resource ida97e86aa_43f5_4086_aca7_ab95aa7041ce 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'ida97e86aa-43f5-4086-aca7-ab95aa7041ce'
	scope: managementGroup(variables.scope)
}

resource id25f0fc8a_7e3a_4b3a_82cf_b6dad1481c09 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id25f0fc8a-7e3a-4b3a-82cf-b6dad1481c09'
	scope: managementGroup(variables.scope)
}

resource id75dde235_78df_40bb_a36c_39edbc0920dc 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id75dde235-78df-40bb-a36c-39edbc0920dc'
	scope: managementGroup(variables.scope)
}

resource id1416b52d_8048_4203_944f_fba2e7ee63de 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id1416b52d-8048-4203-944f-fba2e7ee63de'
	scope: managementGroup(variables.scope)
}

resource id4fb13633_bcc2_47bf_b1db_c90741fdab30 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: '4fb13633-bcc2-47bf-b1db-c90741fdab30'
	scope: managementGroup(variables.scope)
}

resource idfc4faee8_2990_4702_8187_5c276a42fbd3 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idfc4faee8-2990-4702-8187-5c276a42fbd3'
	scope: managementGroup(variables.scope)
}

resource iddeec929b_7110_4657_acf0_2e8a0160be94 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'iddeec929b-7110-4657-acf0-2e8a0160be94'
	scope: managementGroup(variables.scope)
}

resource ida58dfa62_17c9_4218_8546_3418d5ceaec5 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'ida58dfa62-17c9-4218-8546-3418d5ceaec5'
	scope: managementGroup(variables.scope)
}

resource ida36fd6c9_a6ba_44da_a0ba_517b363040f9 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'ida36fd6c9-a6ba-44da-a0ba-517b363040f9'
	scope: managementGroup(variables.scope)
}

resource id0e7e7605_6afd_4094_8ca0_0ad9820ef222 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id0e7e7605-6afd-4094-8ca0-0ad9820ef222'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var logAnalyticsWorkspaceVar = 'defaultPLEASECHANGE'

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories'
	properties: {
		displayName: 'Avanade: Diagnostic_ToLogAnalytics_SecurityLogCategories'
		description: 'Grouping of policies that belong to the resource provider Diagnostic_ToLogAnalytics_SecurityLogCategories'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Monitoring'
		}
		policyDefinitions: [
			{
				policyDefinitionId: id609b4b87_0a28_49cb_9867_497e5caadb29.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id8a95f413_5bf7_4f90_9a17_3b23afc7246c.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: ide80f86f8_e86c_4b6e_b3ab_19425554b2ce.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: idfc644413_4cf7_4b80_8a17_3b23afc5234f.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id4fdcc416_4ff7_4b80_7a17_3c23aff5f234.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id4b95f413_5cf7_4b90_8a17_3b23afc7247b.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id5c7cc413_4cf7_4b80_8a17_3b23afc5244c.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id109080dd_4049_4361_92bb_3e98ca468bd4.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id70a37c1b_8c2d_421b_9319_551ddfb1728e.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: ida97e86aa_43f5_4086_aca7_ab95aa7041ce.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id25f0fc8a_7e3a_4b3a_82cf_b6dad1481c09.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id75dde235_78df_40bb_a36c_39edbc0920dc.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id1416b52d_8048_4203_944f_fba2e7ee63de.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id4fb13633_bcc2_47bf_b1db_c90741fdab30.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: idfc4faee8_2990_4702_8187_5c276a42fbd3.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: iddeec929b_7110_4657_acf0_2e8a0160be94.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: ida58dfa62_17c9_4218_8546_3418d5ceaec5.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: ida36fd6c9_a6ba_44da_a0ba_517b363040f9.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
			{
				policyDefinitionId: id0e7e7605_6afd_4094_8ca0_0ad9820ef222.id
				parameters: {
					logAnalyticsWorkspace: {
						value: logAnalyticsWorkspaceVar
					}
				}
			}
		]
	}
}

