targetScope = 'managementGroup'

var variables = json(loadTextContent('../main/variables.json'))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource id3beb127f_5679_49e4_b856_3333dd877dc5 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id3beb127f-5679-49e4-b856-3333dd877dc5'
	scope: managementGroup(variables.scope)
}

resource idcd0ed746_a30c_4fa6_a844_c8b97e65ee30 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idcd0ed746-a30c-4fa6-a844-c8b97e65ee30'
	scope: managementGroup(variables.scope)
}

resource idac8687dc_9f42_4b2e_88d1_59656b71e3df 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'idac8687dc-9f42-4b2e-88d1-59656b71e3df'
	scope: managementGroup(variables.scope)
}

resource id5b411006_0ae7_4338_a4f7_14dbcbd7d33d 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
	name: 'id5b411006_0ae7_4338_a4f7_14dbcbd7d33d'
	scope: managementGroup(variables.scope)
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var logAnalyticsWorkspaceIdVar = 'defaultValue Please Change'

param allowedLocationsVar array = [
	'EastUS'
]

param deniedLocationsVar array = [
	'EastUS'
]

param listOfResourceTypesAllowed array = [
	'microsoft.compute/virtualmachines/extensions'
	'microsoft.network/networkinterfaces'
	'microsoft.compute/disks'
	'microsoft.storage/storageaccounts'
	'microsoft.compute/virtualmachines'
	'microsoft.web/sites'
	'microsoft.web/serverfarms'
	'microsoft.network/virtualnetworks'
	'microsoft.network/publicipaddresses'
	'microsoft.network/networksecuritygroups'
	'microsoft.web/connections'
	'microsoft.logic/workflows'
	'microsoft.insights/components'
	'microsoft.operationalinsights/workspaces'
	'microsoft.alertsmanagement/smartdetectoralertrules'
	'microsoft.insights/actiongroups'
	'microsoft.operationsmanagement/solutions'
	'microsoft.keyvault/vaults'
	'microsoft.desktopvirtualization/applicationgroups'
	'microsoft.automation/automationaccounts/runbooks'
	'microsoft.network/networkwatchers'
	'microsoft.compute/snapshots'
	'microsoft.desktopvirtualization/workspaces'
	'microsoft.desktopvirtualization/hostpools'
	'microsoft.sql/servers/databases'
	'microsoft.insights/scheduledqueryrules'
	'microsoft.compute/galleries/images/versions'
	'microsoft.cognitiveservices/accounts'
	'microsoft.web/certificates'
	'microsoft.devtestlab/schedules'
	'microsoft.insights/activitylogalerts'
	'microsoft.compute/galleries/images'
	'microsoft.sql/servers'
	'microsoft.insights/workbooks'
	'microsoft.portal/dashboards'
	'microsoft.network/routetables'
	'microsoft.insights/metricalerts'
	'microsoft.network/serviceendpointpolicies'
	'microsoft.network/networkwatchers/flowlogs'
	'microsoft.botservice/botservices'
	'microsoft.automation/automationaccounts'
	'microsoft.network/virtualnetworkgateways'
	'microsoft.network/localnetworkgateways'
	'microsoft.network/connections'
	'microsoft.visualstudio/account'
	'microsoft.servicebus/namespaces'
	'microsoft.search/searchservices'
	'microsoft.insights/webtests'
	'microsoft.eventhub/namespaces'
	'microsoft.databricks/workspaces'
	'microsoft.containerregistry/registries'
	'microsoft.azureactivedirectory/b2cdirectories'
	'sendgrid.email/accounts'
	'microsoft.sqlvirtualmachine/sqlvirtualmachines'
	'microsoft.serviceshub/connectors'
	'microsoft.saas/resources'
	'microsoft.powerbidedicated/capacities'
	'microsoft.datafactory/factories'
	'microsoft.compute/images'
	'microsoft.compute/galleries'
	'microsoft.web/customapis'
	'microsoft.storagesync/storagesyncservices'
	'microsoft.recoveryservices/vaults'
	'microsoft.operationalinsights/querypacks'
	'microsoft.network/frontdoors'
	'microsoft.network/bastionhosts'
	'microsoft.machinelearning/workspaces'
	'microsoft.logic/integrationaccounts'
	'microsoft.insights/autoscalesettings'
	'microsoft.datalakestore/accounts'
	'microsoft.classiccompute/domainnames'
	'microsoft.batch/batchaccounts'
]

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Global 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Global'
	properties: {
		displayName: 'Avanade: Global'
		description: 'Grouping of policies that belong to the resource provider Global'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Global'
		}
		policyDefinitions: [
			{
				policyDefinitionId: id3beb127f_5679_49e4_b856_3333dd877dc5.id
				parameters: {
					logAnalyticsWorkspaceId: {
						value: logAnalyticsWorkspaceIdVar
					}
				}
			}
			{
				policyDefinitionId: idcd0ed746_a30c_4fa6_a844_c8b97e65ee30.id
				parameters: {
					allowedLocations: {
						value: allowedLocationsVar
					}
				}
			}
			{
				policyDefinitionId: idac8687dc_9f42_4b2e_88d1_59656b71e3df.id
				parameters: {
					deniedLocations: {
						value: deniedLocationsVar
					}
				}
			}
			{
				policyDefinitionId: id5b411006_0ae7_4338_a4f7_14dbcbd7d33d.id
				parameters: {
					listOfResourceTypesAllowed: {
						value: listOfResourceTypesAllowed
					}
				}
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/f8456c1c-aa66-4dfb-861a-25d127b775c9'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/5f76cf89-fbf2-47fd-a3f4-b891fa780b60'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/5c607a2e-c700-4744-8254-d77e7c9eb5e4'
			}
		]
	}
}


