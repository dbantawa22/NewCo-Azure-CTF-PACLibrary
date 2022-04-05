targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource id7cf960f7_23de_434b_9e86_e06f7001a06a 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id7cf960f7-23de-434b-9e86-e06f7001a06a'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_DataFactory 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_DataFactory'
	properties: {
		displayName: 'Avanade: Microsoft_DataFactory'
		description: 'Grouping of policies that belong to the resource provider Microsoft_DataFactory'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: DataFactory'
		}
		policyDefinitions: [
			{
				policyDefinitionId: id7cf960f7_23de_434b_9e86_e06f7001a06a.id
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/1cf164be-6819-4a50-b8fa-4bcaa4f98fb6'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/4ec52d6d-beb7-40c4-9a9e-fe753254690e'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/127ef6d7-242f-43b3-9eef-947faf1725d0'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/8b0323be-cc25-4b61-935d-002c3798c6ea'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/f78ccdb4-7bf4-4106-8647-270491d2978a'
			}
		]
	}
}

