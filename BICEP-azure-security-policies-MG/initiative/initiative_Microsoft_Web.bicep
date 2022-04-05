targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource id23cbaaaf_c0cc_4f3e_9d92_90d3152e4507 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id23cbaaaf-c0cc-4f3e-9d92-90d3152e4507'
	scope: managementGroup(variables.scope)
}

resource id49865359_2812_4d96_992e_f48413a1d70b 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id49865359-2812-4d96-992e-f48413a1d70b'
	scope: managementGroup(variables.scope)
}

resource id062208d6_de03_4af6_a0d8_b3272dfe4676 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id062208d6-de03-4af6-a0d8-b3272dfe4676'
	scope: managementGroup(variables.scope)
}

resource id72aab6db_23e5_47e1_9e31_8451e07a0ebc 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id72aab6db-23e5-47e1-9e31-8451e07a0ebc'
	scope: managementGroup(variables.scope)
}

resource id10920f92_fb1f_4978_907c_18a8e0cf7756 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id10920f92-fb1f-4978-907c-18a8e0cf7756'
	scope: managementGroup(variables.scope)
}

resource id2a0f6f93_5d36_452b_ad14_a1b808f54962 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id2a0f6f93-5d36-452b-ad14-a1b808f54962'
	scope: managementGroup(variables.scope)
}

resource idacb7460e_72de_4e87_8bd0_5b8f2f7ea1f7 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idacb7460e-72de-4e87-8bd0-5b8f2f7ea1f7'
	scope: managementGroup(variables.scope)
}

resource idea676157_8a94_4df6_ab3d_20dd80689717 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idea676157-8a94-4df6-ab3d-20dd80689717'
	scope: managementGroup(variables.scope)
}

resource id41f70fd3_a2ff_465d_9b1e_7a61e0d1929c 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id41f70fd3-a2ff-465d-9b1e-7a61e0d1929c'
	scope: managementGroup(variables.scope)
}

resource id48647183_2b97_4886_9d2e_ba8a56f612d9 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id48647183-2b97-4886-9d2e-ba8a56f612d9'
	scope: managementGroup(variables.scope)
}

resource id9cc9ef2f_d05a_4ea3_92bb_6d315e274a4d 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id9cc9ef2f-d05a-4ea3-92bb-6d315e274a4d'
	scope: managementGroup(variables.scope)
}

resource id2ac4033a_36ae_458d_bf45_d57fc4b460a5 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id2ac4033a-36ae-458d-bf45-d57fc4b460a5'
	scope: managementGroup(variables.scope)
}

resource id05390270_9330_4916_81e8_01fe2980111e 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id05390270-9330-4916-81e8-01fe2980111e'
	scope: managementGroup(variables.scope)
}

resource id0b9d4143_5191_47f3_982c_bd5000b913a0 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id0b9d4143-5191-47f3-982c-bd5000b913a0'
	scope: managementGroup(variables.scope)
}

resource id40d3f97b_8f10_4fff_87f4_283b261086f0 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id40d3f97b-8f10-4fff-87f4-283b261086f0'
	scope: managementGroup(variables.scope)
}

resource id4b68b94c_89f4_44e2_9be5_117640297416 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id4b68b94c-89f4-44e2-9be5-117640297416'
	scope: managementGroup(variables.scope)
}

resource id189e4918_258b_45eb_9388_badf0d74c00f 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id189e4918-258b-45eb-9388-badf0d74c00f'
	scope: managementGroup(variables.scope)
}

resource id899adf59_e46a_44ed_b7ae_f18fa453cfa5 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id899adf59-e46a-44ed-b7ae-f18fa453cfa5'
	scope: managementGroup(variables.scope)
}

resource idc084c9eb_970b_44ea_942b_43b0833d5602 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idc084c9eb-970b-44ea-942b-43b0833d5602'
	scope: managementGroup(variables.scope)
}

resource idae18b085_dd6b_4746_ad53_dd20f4853da1 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idae18b085-dd6b-4746-ad53-dd20f4853da1'
	scope: managementGroup(variables.scope)
}

resource id969e7778_82b8_4e11_9d80_3eb81702dac4 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id969e7778-82b8-4e11-9d80-3eb81702dac4'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_Web 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_Web'
	properties: {
		displayName: 'Avanade: Microsoft_Web'
		description: 'Grouping of policies that belong to the resource provider Microsoft_Web'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Web'
		}
		policyDefinitions: [
			{
				policyDefinitionId: id23cbaaaf_c0cc_4f3e_9d92_90d3152e4507.id
			}
			{
				policyDefinitionId: id49865359_2812_4d96_992e_f48413a1d70b.id
			}
			{
				policyDefinitionId: id062208d6_de03_4af6_a0d8_b3272dfe4676.id
			}
			{
				policyDefinitionId: id72aab6db_23e5_47e1_9e31_8451e07a0ebc.id
			}
			{
				policyDefinitionId: id10920f92_fb1f_4978_907c_18a8e0cf7756.id
			}
			{
				policyDefinitionId: id2a0f6f93_5d36_452b_ad14_a1b808f54962.id
			}
			{
				policyDefinitionId: idacb7460e_72de_4e87_8bd0_5b8f2f7ea1f7.id
			}
			{
				policyDefinitionId: idea676157_8a94_4df6_ab3d_20dd80689717.id
			}
			{
				policyDefinitionId: id41f70fd3_a2ff_465d_9b1e_7a61e0d1929c.id
			}
			{
				policyDefinitionId: id48647183_2b97_4886_9d2e_ba8a56f612d9.id
			}
			{
				policyDefinitionId: id9cc9ef2f_d05a_4ea3_92bb_6d315e274a4d.id
			}
			{
				policyDefinitionId: id2ac4033a_36ae_458d_bf45_d57fc4b460a5.id
			}
			{
				policyDefinitionId: id05390270_9330_4916_81e8_01fe2980111e.id
			}
			{
				policyDefinitionId: id0b9d4143_5191_47f3_982c_bd5000b913a0.id
			}
			{
				policyDefinitionId: id40d3f97b_8f10_4fff_87f4_283b261086f0.id
			}
			{
				policyDefinitionId: id4b68b94c_89f4_44e2_9be5_117640297416.id
			}
			{
				policyDefinitionId: id189e4918_258b_45eb_9388_badf0d74c00f.id
			}
			{
				policyDefinitionId: id899adf59_e46a_44ed_b7ae_f18fa453cfa5.id
			}
			{
				policyDefinitionId: idc084c9eb_970b_44ea_942b_43b0833d5602.id
			}
			{
				policyDefinitionId: idae18b085_dd6b_4746_ad53_dd20f4853da1.id
			}
			{
				policyDefinitionId: id969e7778_82b8_4e11_9d80_3eb81702dac4.id
			}
		]
	}
}

