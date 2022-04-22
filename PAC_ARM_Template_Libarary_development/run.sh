#!/bin/bash


connect_deployment()
{
    #AZURE_SUBSCRIPTION_ID = '4ce27a75-a843-43b4-99ed-006804c35d7e'
    AZURE_SUBSCRIPTION_ID="4ce27a75-a843-43b4-99ed-006804c35d7e"
    echo $AZURE_SUBSCRIPTION_ID

    #az login
    echo 'az login and set subscription'
    az account set --subscription $AZURE_SUBSCRIPTION_ID

    echo 'az account show'
    az account show

    LOCATION="uksouth"
    DEPLOYMENT_NAME="policy-"$LOCATION 
    AZ_PAC_LIBRARY_PATH="https://raw.githubusercontent.com/dbantawa22/NewCo-Azure-CTF-PACLibrary/main/"

    echo '------------------- Policy Definition --------------------'

    echo $DEPLOYMENT_NAME
    echo '------------------- Policy Sets Definition --------------------'

    echo $DEPLOYMENT_NAME
    # az deployment sub create --name $DEPLOYMENT_NAME --location $LOCATION --template-uri $AZ_PAC_LIBRARY_PATH"BICEP-azure-security-policies-subscription/main"

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file  ./policyset_allowed_locations.json --name policy-Deployment-16

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file  ./policyset_not_allowed_resource_types.json --name policy-Deployment-17

        az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file  ./policyset_vm_backup.json --name policy-Deployment-13

    az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file  ./policyset_tagging.json --name policy-Deployment-14
   
    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file  ./policyset_allowed_vm_sizes.json --name policy-Deployment-15


    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policies.json --name policy-Deployment-1

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_denyIP.json --name policy-Deployment-2
  
    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./DENY-PublicEndpointsPolicySetDefinition.json --name policy-Deployment-3

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_keyvault.json --name policy-Deployment-4
    
    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_enforce_AG_WAF.json --name policy-Deployment-5

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_ipforwarding.json --name policy-Deployment-6
    
    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./DINE-PrivateDNSZonesPolicySetDefinition.json --name policy-Deployment-7

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_network_traffic.json --name policy-Deployment-8

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_ddos.json --name policy-Deployment-9
      
    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_diagnostic_settings.json --name policy-Deployment-10
    
    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_log_storage.json --name policy-Deployment-11

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./policyset_network_traffic_logs.json --name policy-Deployment-12
 

    
 
    # echo '------------------- Policy Sets Assignments --------------------'

    # az deployment mg create --location uksouth --management-group-id MGMT_ROOT --template-file ./DENY-PublicIpAddressPolicyAssignment.json --name policy-set-assignment-deployment-1


}


main() {
    echo "Start MAIN()"
    connect_deployment    
    echo "End MAIN()"
}


main