targetScope = 'subscription'

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource id2c490c0b_ceda_419f_b136_da88ae379fdb 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id2c490c0b-ceda-419f-b136-da88ae379fdb'
}

resource id77b6be7d_96bb_4b18_9ecc_d757961bbb39 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id77b6be7d-96bb-4b18-9ecc-d757961bbb39'
}

resource idace216ac_e331_4850_88bf_4c875c04ac40 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idace216ac-e331-4850-88bf-4c875c04ac40'
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_Compute 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_Compute'
	properties: {
		displayName: 'Avanade: Microsoft_Compute'
		description: 'Grouping of policies that belong to the resource provider Microsoft_Compute'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Compute'
		}
		policyDefinitions: [
			{
				policyDefinitionId: id2c490c0b_ceda_419f_b136_da88ae379fdb.id
			}
			{
				policyDefinitionId: id77b6be7d_96bb_4b18_9ecc_d757961bbb39.id
			}
			{
				policyDefinitionId: idace216ac_e331_4850_88bf_4c875c04ac40.id
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/1d84d5fb-01f6-4d12-ba4f-4a26081d403d'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/7c1b1214-f927-48bf-8882-84f0af6588b1'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/0015ea4d-51ff-4ce3-8d8c-f3f8f0179a56'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/06a78e20-9358-41c9-923c-fb736d382a4d'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/c43e4a30-77cb-48ab-a4dd-93f175c63b57'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/9b597639-28e4-48eb-b506-56b05d366257'
			}
		]
	}
}
