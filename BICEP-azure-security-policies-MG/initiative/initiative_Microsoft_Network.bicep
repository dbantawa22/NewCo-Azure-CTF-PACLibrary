targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource idad41122a_ef15_445d_81be_e8b48ea240ce 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idad41122a-ef15-445d-81be-e8b48ea240ce'
	scope: managementGroup(variables.scope)
}

resource idd2c9c631_f882_476c_888b_c9d95f09bbab 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idd2c9c631-f882-476c-888b-c9d95f09bbab'
	scope: managementGroup(variables.scope)
}

resource id96dba2bf_0e77_403f_a586_70eec15be753 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id96dba2bf-0e77-403f-a586-70eec15be753'
	scope: managementGroup(variables.scope)
}

resource id6cb88261_4ca4_4dcf_8c2e_a9c3b7b6e967 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id6cb88261-4ca4-4dcf-8c2e-a9c3b7b6e967'
	scope: managementGroup(variables.scope)
}

resource idb07c0e32_dbc6_41a7_b5f5_ebc913729d8e 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idb07c0e32-dbc6-41a7-b5f5-ebc913729d8e'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_Network 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_Network'
	properties: {
		displayName: 'Avanade: Microsoft_Network'
		description: 'Grouping of policies that belong to the resource provider Microsoft_Network'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Network'
		}
		policyDefinitions: [
			{
				policyDefinitionId: idad41122a_ef15_445d_81be_e8b48ea240ce.id
			}
			{
				policyDefinitionId: idd2c9c631_f882_476c_888b_c9d95f09bbab.id
			}
			{
				policyDefinitionId: id96dba2bf_0e77_403f_a586_70eec15be753.id
			}
			{
				policyDefinitionId: id6cb88261_4ca4_4dcf_8c2e_a9c3b7b6e967.id
			}
			{
				policyDefinitionId: idb07c0e32_dbc6_41a7_b5f5_ebc913729d8e.id
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/2d21331d-a4c2-4def-a9ad-ee4e1e023beb'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/e345b6c3-24bd-4c93-9bbb-7e5e49a17b78'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/e0a2b1a3-f7f9-4569-807f-2a9edebdf4d9'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/d63edb4a-c612-454d-b47d-191a724fcbf0'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/ea4d6841-2173-4317-9747-ff522a45120f'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/b6e2945c-0b7b-40f5-9233-7a5323b5cdc6'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/c251913d-7d24-4958-af87-478ed3b9ba41'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/c4857be7-912a-4c75-87e6-e30292bcdf78'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/e372f825-a257-4fb8-9175-797a8a8627d6'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/ae5d2f14-d830-42b6-9899-df6cfe9c71a3'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/2c89a2e5-7285-40fe-afe0-ae8654b92fab'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/60d21c4f-21a3-4d94-85f4-b924e6aeeda4'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/d416745a-506c-48b6-8ab1-83cb814bcaa3'
				parameters: {
					virtualNetworkId: {
						value: 'defaultValue, please Change'
					}
				}
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/564feb30-bf6a-4854-b4bb-0d2d2d1e6c66'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/12430be1-6cc8-4527-a9a8-e3d38f250096'
			}
		]
	}
}

