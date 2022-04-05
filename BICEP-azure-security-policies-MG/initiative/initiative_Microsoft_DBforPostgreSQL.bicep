targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource idff0fbd85_9f05_440c_81f1_e4fb26cf0f9a 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idff0fbd85-9f05-440c-81f1-e4fb26cf0f9a'
	scope: managementGroup(variables.scope)
}

resource idd8b9f402_1a9a_4f56_bc7f_b84bcc5b087b 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idd8b9f402-1a9a-4f56-bc7f-b84bcc5b087b'
	scope: managementGroup(variables.scope)
}

resource id046abdc2_b3bc_463e_8948_879d06c676a6 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id046abdc2-b3bc-463e-8948-879d06c676a6'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_DBforPostgreSQL 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_DBforPostgreSQL'
	properties: {
		displayName: 'Avanade: Microsoft_DBforPostgreSQL'
		description: 'Grouping of policies that belong to the resource provider Microsoft_DBforPostgreSQL'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: DBforPostgreSQL'
		}
		policyDefinitions: [
			{
				policyDefinitionId: idff0fbd85_9f05_440c_81f1_e4fb26cf0f9a.id
			}
			{
				policyDefinitionId: idd8b9f402_1a9a_4f56_bc7f_b84bcc5b087b.id
			}
			{
				policyDefinitionId: id046abdc2_b3bc_463e_8948_879d06c676a6.id
			}
		]
	}
}

