targetScope = 'managementGroup'

var variables = json(loadTextContent('./variables.json'))

module initiative_Diagnostic_ToEventHub_SouthCentralUS '../initiative/initiative_Diagnostic_ToEventHub_SouthCentralUS.bicep' = {
	name: 'initiative_Diagnostic_ToEventHub_SouthCentralUS'
	scope: managementGroup(variables.scope)
}

module initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories '../initiative/initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories.bicep' = {
	name: 'initiative_Diagnostic_ToLogAnalytics_SecurityLogCategories'
	scope: managementGroup(variables.scope)
}

module initiative_Diagnostic_ToLogAnalytics '../initiative/initiative_Diagnostic_ToLogAnalytics.bicep' = {
	name: 'initiative_Diagnostic_ToLogAnalytics'
	scope: managementGroup(variables.scope)
}

module initiative_Global '../initiative/initiative_Global.bicep' = {
	name: 'initiative_Global'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_ApiManagement '../initiative/initiative_Microsoft_ApiManagement.bicep' = {
	name: 'initiative_Microsoft_ApiManagement'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_Cache '../initiative/initiative_Microsoft_Cache.bicep' = {
	name: 'initiative_Microsoft_Cache'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_Compute '../initiative/initiative_Microsoft_Compute.bicep' = {
	name: 'initiative_Microsoft_Compute'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_ContainerRegistry '../initiative/initiative_Microsoft_ContainerRegistry.bicep' = {
	name: 'initiative_Microsoft_ContainerRegistry'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_ContainerService '../initiative/initiative_Microsoft_ContainerService.bicep' = {
	name: 'initiative_Microsoft_ContainerService'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_DataFactory '../initiative/initiative_Microsoft_DataFactory.bicep' = {
	name: 'initiative_Microsoft_DataFactory'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_DataLakeAnalytics '../initiative/initiative_Microsoft_DataLakeAnalytics.bicep' = {
	name: 'initiative_Microsoft_DataLakeAnalytics'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_DataLakeStore '../initiative/initiative_Microsoft_DataLakeStore.bicep' = {
	name: 'initiative_Microsoft_DataLakeStore'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_DBforPostgreSQL '../initiative/initiative_Microsoft_DBforPostgreSQL.bicep' = {
	name: 'initiative_Microsoft_DBforPostgreSQL'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_DocumentDB '../initiative/initiative_Microsoft_DocumentDB.bicep' = {
	name: 'initiative_Microsoft_DocumentDB'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_HDInsight '../initiative/initiative_Microsoft_HDInsight.bicep' = {
	name: 'initiative_Microsoft_HDInsight'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_KeyVault '../initiative/initiative_Microsoft_KeyVault.bicep' = {
	name: 'initiative_Microsoft_KeyVault'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_Network '../initiative/initiative_Microsoft_Network.bicep' = {
	name: 'initiative_Microsoft_Network'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_Sql '../initiative/initiative_Microsoft_Sql.bicep' = {
	name: 'initiative_Microsoft_Sql'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_Storage '../initiative/initiative_Microsoft_Storage.bicep' = {
	name: 'initiative_Microsoft_Storage'
	scope: managementGroup(variables.scope)
}

module initiative_Microsoft_Web '../initiative/initiative_Microsoft_Web.bicep' = {
	name: 'initiative_Microsoft_Web'
	scope: managementGroup(variables.scope)
}

