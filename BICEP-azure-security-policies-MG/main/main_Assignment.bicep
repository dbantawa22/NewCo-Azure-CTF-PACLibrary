targetScope = 'managementGroup'

var variables = json(loadTextContent('./variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////// CALLING EXISTING INITIATIVES //////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Diagnostic_ToEventHub_SouthCentralUS 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Diagnostic_ToEventHub_SouthCentralUS'
	scope: managementGroup(variables.scope)
}

resource initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories'
	scope: managementGroup(variables.scope)
}

resource initiative_Diagnostic_ToLogAnalytics 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Diagnostic_ToLogAnalytics'
	scope: managementGroup(variables.scope)
}

resource initiative_Global 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Global'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_ApiManagement 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_ApiManagement'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_Cache 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Cache'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_Compute 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Compute'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_ContainerRegistry 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_ContainerRegistry'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_ContainerService 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_ContainerService'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_DataFactory 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DataFactory'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_DataLakeAnalytics 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DataLakeAnalytics'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_DataLakeStore 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DataLakeStore'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_DBforPostgreSQL 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DBforPostgreSQL'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_DocumentDB 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DocumentDB'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_HDInsight 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_HDInsight'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_KeyVault 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_KeyVault'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_Network 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Network'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_Sql 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Sql'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_Storage 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Storage'
	scope: managementGroup(variables.scope)
}

resource initiative_Microsoft_Web 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Web'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Assignments ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource assignment_Microsoft_DataLakeAnalytics 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_DataLakeAnalytics'),0,24)
	properties: {
		policyDefinitionId: initiative_Diagnostic_ToEventHub_SouthCentralUS.id
		displayName: initiative_Diagnostic_ToEventHub_SouthCentralUS.properties.displayName
	}
}

resource assignment_Microsoft_HDInsight 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_HDInsight'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_HDInsight.id
		displayName: initiative_Microsoft_HDInsight.properties.displayName
	}
}

resource assignment_Diagnostic_ToLogAnalytics 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Diagnostic_ToLogAnalytics'),0,24)
	properties: {
		policyDefinitionId: initiative_Diagnostic_ToLogAnalytics.id
		displayName: initiative_Diagnostic_ToLogAnalytics.properties.displayName
	}
}

resource assignment_Microsoft_Cache 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_Cache'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_Cache.id
		displayName: initiative_Microsoft_Cache.properties.displayName
	}
}

resource assignment_Microsoft_Sql 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_Sql'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_Sql.id
		displayName: initiative_Microsoft_Sql.properties.displayName
	}
}

resource assignment_Microsoft_DataFactory 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_DataFactory'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_DataFactory.id
		displayName: initiative_Microsoft_DataFactory.properties.displayName
	}
}

resource assignment_Microsoft_Compute 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_Compute'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_Compute.id
		displayName: initiative_Microsoft_Compute.properties.displayName
	}
}

resource assignment_Microsoft_KeyVault 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_KeyVault'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_KeyVault.id
		displayName: initiative_Microsoft_KeyVault.properties.displayName
	}
}

resource assignment_Microsoft_Web 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_Web'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_Web.id
		displayName: initiative_Microsoft_Web.properties.displayName
	}
}

resource assignment_Microsoft_ApiManagement 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_ApiManagement'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_ApiManagement.id
		displayName: initiative_Microsoft_ApiManagement.properties.displayName
	}
}

resource assignment_Microsoft_Network 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_Network'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_Network.id
		displayName: initiative_Microsoft_Network.properties.displayName
	}
}

resource assignment_Microsoft_DocumentDB 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_DocumentDB'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_DocumentDB.id
		displayName: initiative_Microsoft_DocumentDB.properties.displayName
	}
}

resource assignment_Global 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Global'),0,24)
	properties: {
		policyDefinitionId: initiative_Global.id
		displayName: initiative_Global.properties.displayName
	}
}

resource assignment_Microsoft_DataLakeStore 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_DataLakeStore'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_DataLakeStore.id
		displayName: initiative_Microsoft_DataLakeStore.properties.displayName
	}
}

resource assignment_Microsoft_ContainerService 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_ContainerService'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_ContainerService.id
		displayName: initiative_Microsoft_ContainerService.properties.displayName
	}
}

resource assignment_Microsoft_ContainerRegistry 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_ContainerRegistry'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_ContainerRegistry.id
		displayName: initiative_Microsoft_ContainerRegistry.properties.displayName
	}
}

resource assignment_Microsoft_DBforPostgreSQL 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_DBforPostgreSQL'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_DBforPostgreSQL.id
		displayName: initiative_Microsoft_DBforPostgreSQL.properties.displayName
	}
}

resource assignment_Microsoft_Storage 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Microsoft_Storage'),0,24)
	properties: {
		policyDefinitionId: initiative_Microsoft_Storage.id
		displayName: initiative_Microsoft_Storage.properties.displayName
	}
}

resource assignment_Diagnostic_ToLogAnalytics_SecurityLogCategories 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: substring(guid('assignment_Diagnostic_ToLogAnalytics_SecurityLogCategories'),0,24)
	properties: {
		policyDefinitionId: initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories.id
		displayName: initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories.properties.displayName
	}
}

