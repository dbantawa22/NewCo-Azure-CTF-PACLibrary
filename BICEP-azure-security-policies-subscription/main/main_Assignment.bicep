targetScope = 'subscription'

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////// CALLING EXISTING INITIATIVES //////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Diagnostic_ToEventHub_SouthCentralUS 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Diagnostic_ToEventHub_SouthCentralUS'
}

resource initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories'
}

resource initiative_Diagnostic_ToLogAnalytics 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Diagnostic_ToLogAnalytics'
}

resource initiative_Global 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Global'
}

resource initiative_Microsoft_ApiManagement 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_ApiManagement'
}

resource initiative_Microsoft_Cache 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Cache'
}

resource initiative_Microsoft_Compute 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Compute'
}

resource initiative_Microsoft_ContainerRegistry 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_ContainerRegistry'
}

resource initiative_Microsoft_ContainerService 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_ContainerService'
}

resource initiative_Microsoft_DataFactory 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DataFactory'
}

resource initiative_Microsoft_DataLakeAnalytics 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DataLakeAnalytics'
}

resource initiative_Microsoft_DataLakeStore 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DataLakeStore'
}

resource initiative_Microsoft_DBforPostgreSQL 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DBforPostgreSQL'
}

resource initiative_Microsoft_DocumentDB 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_DocumentDB'
}

resource initiative_Microsoft_HDInsight 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_HDInsight'
}

resource initiative_Microsoft_KeyVault 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_KeyVault'
}

resource initiative_Microsoft_Network 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Network'
}

resource initiative_Microsoft_Sql 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Sql'
}

resource initiative_Microsoft_Storage 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Storage'
}

resource initiative_Microsoft_Web 'Microsoft.Authorization/policySetDefinitions@2020-09-01' existing = {
	name: 'initiative_Microsoft_Web'
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Assignments ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource assignment_Microsoft_DataLakeAnalytics 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_DataLakeAnalytics'
	properties: {
		policyDefinitionId: initiative_Diagnostic_ToEventHub_SouthCentralUS.id
		displayName: initiative_Diagnostic_ToEventHub_SouthCentralUS.properties.displayName
	}
}

resource assignment_Microsoft_HDInsight 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_HDInsight'
	properties: {
		policyDefinitionId: initiative_Microsoft_HDInsight.id
		displayName: initiative_Microsoft_HDInsight.properties.displayName
	}
}

resource assignment_Diagnostic_ToLogAnalytics 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Diagnostic_ToLogAnalytics'
	properties: {
		policyDefinitionId: initiative_Diagnostic_ToLogAnalytics.id
		displayName: initiative_Diagnostic_ToLogAnalytics.properties.displayName
	}
}

resource assignment_Microsoft_Cache 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_Cache'
	properties: {
		policyDefinitionId: initiative_Microsoft_Cache.id
		displayName: initiative_Microsoft_Cache.properties.displayName
	}
}

resource assignment_Microsoft_Sql 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_Sql'
	properties: {
		policyDefinitionId: initiative_Microsoft_Sql.id
		displayName: initiative_Microsoft_Sql.properties.displayName
	}
}

resource assignment_Microsoft_DataFactory 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_DataFactory'
	properties: {
		policyDefinitionId: initiative_Microsoft_DataFactory.id
		displayName: initiative_Microsoft_DataFactory.properties.displayName
	}
}

resource assignment_Microsoft_Compute 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_Compute'
	properties: {
		policyDefinitionId: initiative_Microsoft_Compute.id
		displayName: initiative_Microsoft_Compute.properties.displayName
	}
}

resource assignment_Microsoft_KeyVault 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_KeyVault'
	properties: {
		policyDefinitionId: initiative_Microsoft_KeyVault.id
		displayName: initiative_Microsoft_KeyVault.properties.displayName
	}
}

resource assignment_Microsoft_Web 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_Web'
	properties: {
		policyDefinitionId: initiative_Microsoft_Web.id
		displayName: initiative_Microsoft_Web.properties.displayName
	}
}

resource assignment_Microsoft_ApiManagement 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_ApiManagement'
	properties: {
		policyDefinitionId: initiative_Microsoft_ApiManagement.id
		displayName: initiative_Microsoft_ApiManagement.properties.displayName
	}
}

resource assignment_Microsoft_Network 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_Network'
	properties: {
		policyDefinitionId: initiative_Microsoft_Network.id
		displayName: initiative_Microsoft_Network.properties.displayName
	}
}

resource assignment_Microsoft_DocumentDB 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_DocumentDB'
	properties: {
		policyDefinitionId: initiative_Microsoft_DocumentDB.id
		displayName: initiative_Microsoft_DocumentDB.properties.displayName
	}
}

resource assignment_Global 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Global'
	properties: {
		policyDefinitionId: initiative_Global.id
		displayName: initiative_Global.properties.displayName
	}
}

resource assignment_Microsoft_DataLakeStore 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_DataLakeStore'
	properties: {
		policyDefinitionId: initiative_Microsoft_DataLakeStore.id
		displayName: initiative_Microsoft_DataLakeStore.properties.displayName
	}
}

resource assignment_Microsoft_ContainerService 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_ContainerService'
	properties: {
		policyDefinitionId: initiative_Microsoft_ContainerService.id
		displayName: initiative_Microsoft_ContainerService.properties.displayName
	}
}

resource assignment_Microsoft_ContainerRegistry 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_ContainerRegistry'
	properties: {
		policyDefinitionId: initiative_Microsoft_ContainerRegistry.id
		displayName: initiative_Microsoft_ContainerRegistry.properties.displayName
	}
}

resource assignment_Microsoft_DBforPostgreSQL 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_DBforPostgreSQL'
	properties: {
		policyDefinitionId: initiative_Microsoft_DBforPostgreSQL.id
		displayName: initiative_Microsoft_DBforPostgreSQL.properties.displayName
	}
}

resource assignment_Microsoft_Storage 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Microsoft_Storage'
	properties: {
		policyDefinitionId: initiative_Microsoft_Storage.id
		displayName: initiative_Microsoft_Storage.properties.displayName
	}
}

resource assignment_Diagnostic_ToLogAnalytics_SecurityLogCategories 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
	name: 'assignment_Diagnostic_ToLogAnalytics_SecurityLogCategories'
	properties: {
		policyDefinitionId: initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories.id
		displayName: initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories.properties.displayName
	}
}
