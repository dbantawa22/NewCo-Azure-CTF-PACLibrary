targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource id077ef4bf_68e4_4003_99ac_847a004e81b5 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id077ef4bf-68e4-4003-99ac-847a004e81b5'
	scope: managementGroup(variables.scope)
}

resource idc3cd5db0_577a_4238_9103_2fffa7da5618 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idc3cd5db0-577a-4238-9103-2fffa7da5618'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_ContainerRegistry 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_ContainerRegistry'
	properties: {
		displayName: 'Avanade: Microsoft_ContainerRegistry'
		description: 'Grouping of policies that belong to the resource provider Microsoft_ContainerRegistry'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: ContainerRegistry'
		}
		policyDefinitions: [
			{
				policyDefinitionId: id077ef4bf_68e4_4003_99ac_847a004e81b5.id
			}
			{
				policyDefinitionId: idc3cd5db0_577a_4238_9103_2fffa7da5618.id
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/0fdf0491-d080-4575-b627-ad0e843cba0f'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/5b9159ae-1701-4a6f-9a7a-aa9c8ddd0580'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/d0793b48-0edc-4296-a390-4c75d1bdfd71'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/e8eef0a8-67cf-4eb4-9386-14b0e78733d4'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/bd560fc0-3c69-498a-ae9f-aa8eb7de0e13'
			}
		]
	}
}

