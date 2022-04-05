targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource id336028ad_144f_4f40_a36d_f63c6531ccff 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id336028ad-144f-4f40-a36d-f63c6531ccff'
	scope: managementGroup(variables.scope)
}

resource id0c8f9c47_5abb_4cab_9d3d_bec71fbebdc3 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id0c8f9c47-5abb-4cab-9d3d-bec71fbebdc3'
	scope: managementGroup(variables.scope)
}

resource idf3d66bd0_0965_4241_a37d_9d2bbd6d83ae 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idf3d66bd0-0965-4241-a37d-9d2bbd6d83ae'
	scope: managementGroup(variables.scope)
}

resource id007505b6_118e_41d9_84a8_f344d7f77e82 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id007505b6-118e-41d9-84a8-f344d7f77e82'
	scope: managementGroup(variables.scope)
}

resource idee2b2208_eed8_49d9_afd9_40eb221502db 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idee2b2208-eed8-49d9-afd9-40eb221502db'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_Storage 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_Storage'
	properties: {
		displayName: 'Avanade: Microsoft_Storage'
		description: 'Grouping of policies that belong to the resource provider Microsoft_Storage'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Storage'
		}
		policyDefinitions: [
			{
				policyDefinitionId: id336028ad_144f_4f40_a36d_f63c6531ccff.id
			}
			{
				policyDefinitionId: id0c8f9c47_5abb_4cab_9d3d_bec71fbebdc3.id
			}
			{
				policyDefinitionId: idf3d66bd0_0965_4241_a37d_9d2bbd6d83ae.id
			}
			{
				policyDefinitionId: id007505b6_118e_41d9_84a8_f344d7f77e82.id
			}
			{
				policyDefinitionId: idee2b2208_eed8_49d9_afd9_40eb221502db.id
			}
		]
	}
}

