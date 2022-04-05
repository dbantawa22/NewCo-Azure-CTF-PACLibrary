targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource idfe657780_2c06_492c_84ae_b5361b431d19 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idfe657780-2c06-492c-84ae-b5361b431d19'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_Cache 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_Cache'
	properties: {
		displayName: 'Avanade: Microsoft_Cache'
		description: 'Grouping of policies that belong to the resource provider Microsoft_Cache'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Cache'
		}
		policyDefinitions: [
			{
				policyDefinitionId: idfe657780_2c06_492c_84ae_b5361b431d19.id
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/470baccb-7e51-4549-8b1a-3e5be069f663'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/7d092e0a-7acd-40d2-a975-dca21cae48c4'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/7803067c-7d34-46e3-8c79-0ca68fc4036d'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/22bee202-a82f-4305-9a2a-6d7f44d4dedb'
			}
		]
	}
}

