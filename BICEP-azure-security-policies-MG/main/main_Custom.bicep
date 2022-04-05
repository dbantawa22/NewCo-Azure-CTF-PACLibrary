targetScope = 'managementGroup'

var variables = json(loadTextContent('./variables.json'))

module custom_Diagnostic_ToEventHub_SouthCentralUS '../custom/custom_Diagnostic_ToEventHub_SouthCentralUS.bicep' = {
	name: 'custom_Diagnostic_ToEventHub_SouthCentralUS'
	scope: managementGroup(variables.scope)
}

module custom_Diagnostic_ToLogAnalytics_SecurityLogCategories '../custom/custom_Diagnostic_ToLogAnalytics_SecurityLogCategories.bicep' = {
	name: 'custom_Diagnostic_ToLogAnalytics_SecurityLogCategories'
	scope: managementGroup(variables.scope)
}

module custom_Diagnostic_ToLogAnalytics '../custom/custom_Diagnostic_ToLogAnalytics.bicep' = {
	name: 'custom_Diagnostic_ToLogAnalytics'
	scope: managementGroup(variables.scope)
}

module custom_Global '../custom/custom_Global.bicep' = {
	name: 'custom_Global'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_ApiManagement '../custom/custom_Microsoft_ApiManagement.bicep' = {
	name: 'custom_Microsoft_ApiManagement'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_Cache '../custom/custom_Microsoft_Cache.bicep' = {
	name: 'custom_Microsoft_Cache'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_Compute '../custom/custom_Microsoft_Compute.bicep' = {
	name: 'custom_Microsoft_Compute'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_ContainerRegistry '../custom/custom_Microsoft_ContainerRegistry.bicep' = {
	name: 'custom_Microsoft_ContainerRegistry'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_ContainerService '../custom/custom_Microsoft_ContainerService.bicep' = {
	name: 'custom_Microsoft_ContainerService'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_DataFactory '../custom/custom_Microsoft_DataFactory.bicep' = {
	name: 'custom_Microsoft_DataFactory'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_DataLakeAnalytics '../custom/custom_Microsoft_DataLakeAnalytics.bicep' = {
	name: 'custom_Microsoft_DataLakeAnalytics'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_DataLakeStore '../custom/custom_Microsoft_DataLakeStore.bicep' = {
	name: 'custom_Microsoft_DataLakeStore'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_DBforPostgreSQL '../custom/custom_Microsoft_DBforPostgreSQL.bicep' = {
	name: 'custom_Microsoft_DBforPostgreSQL'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_DocumentDB '../custom/custom_Microsoft_DocumentDB.bicep' = {
	name: 'custom_Microsoft_DocumentDB'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_HDInsight '../custom/custom_Microsoft_HDInsight.bicep' = {
	name: 'custom_Microsoft_HDInsight'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_KeyVault '../custom/custom_Microsoft_KeyVault.bicep' = {
	name: 'custom_Microsoft_KeyVault'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_Network '../custom/custom_Microsoft_Network.bicep' = {
	name: 'custom_Microsoft_Network'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_Sql '../custom/custom_Microsoft_Sql.bicep' = {
	name: 'custom_Microsoft_Sql'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_Storage '../custom/custom_Microsoft_Storage.bicep' = {
	name: 'custom_Microsoft_Storage'
	scope: managementGroup(variables.scope)
}

module custom_Microsoft_Web '../custom/custom_Microsoft_Web.bicep' = {
	name: 'custom_Microsoft_Web'
	scope: managementGroup(variables.scope)
}

