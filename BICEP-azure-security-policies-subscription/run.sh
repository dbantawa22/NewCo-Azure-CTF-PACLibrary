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

    echo '------------------- RESOURCE GROUPS --------------------'

    echo $DEPLOYMENT_NAME
     echo '------------------- RESOURCE GROUPS --------------------'

    echo $DEPLOYMENT_NAME

    az deployment mg create --location $LOCATION --management-group-id MGMT_ROOT --template-file .\policies.json --name policy-deployment-1 

    az deployment mg create --location $LOCATION --management-group-id MGMT_ROOT --template-file .\policyset_denyIP.json --name policy-deployment-
    
    # az deployment sub create --name $DEPLOYMENT_NAME --location $LOCATION --template-uri $AZ_PAC_LIBRARY_PATH"PAC_ARM_Template_Libarary_development/main"

    # az deployment sub create --location uksouth --template-file ./main/main_Custom.bicep 

    # az deployment sub create --location uksouth --template-file ./main/main_Initiative.bicep 

    # az deployment sub create --location uksouth --template-file ./main/main_Assignment.bicep
    


#      stage('Build') {
#          withCredentials([azureServicePrincipal('Jenkins_SP')]) { //'Azure-private-sp' will need to be changed for client environment credentials
#             #  sh 'bicep build --file ./main/main.bicep'
#  }
        
#      }
    
#      stage('Deploy') {
#          withCredentials([azureServicePrincipal('Jenkins_SP')]) { //'Azure-private-sp' will need to be changed for client environment credentials
#              sh 'az deployment sub create --l WestUS -f ./main/main.bicep'
#  }


    # echo '------------------- STORAGE --------------------'
    # resource_group="connect-rg-stg-eus1-01"
    # #az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"StorageAccount/stg.json" --parameters "EUS/stg.parameters.json"
    
    # echo '------------------- NSG GROUPS --------------------'
    
    # resource_group="connect-rg-nsg-eus1-01"
    # az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"NetworkSecurityGroup/nsg.json" --parameters "EUS/nsg.parameters.json"


    # resource_group="connect-rg-network-eus1-01"
    # echo '------------------- ROUTETABLE --------------------'
    # az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"RouteTables/rt.json" --parameters "EUS/rt.parameters.json"
    
    # echo '------------------- PIPS --------------------'
    # az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"PublicIPAddresses/pip.json" --parameters "EUS/pip.parameters.json"
         

    # echo '------------------- VIRTUAL NETWORKS --------------------'
    # az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"VirtualNetwork/vnet.json" --parameters "EUS/vnet.parameters.json"
 
  
    # echo '------------------- EXPRESS ROUTE --------------------'
    # #az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"ExpressRouteCircuit/erc.json" --parameters "EUS/erc.parameters.json"


    # echo '------------------- PEERINGS --------------------'

    # az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"VirtualNetwork/vnet.peer.json" --parameters "EUS/peer.connect-identity.parameters.json" \
    #     --parameters remote_subscription_id="7d0ec199-2cbe-447f-a0ff-f0d813582a21"

    # az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"VirtualNetwork/vnet.peer.json" --parameters "EUS/peer.connect-mgmt.parameters.json" \
    #     --parameters remote_subscription_id="0808dcbf-2e54-48d8-9ef9-7e899fd4eddc"

    # az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"VirtualNetwork/vnet.peer.json" --parameters "EUS/peer.connect-vdi01.parameters.json" \
    #     --parameters remote_subscription_id="4ce27a75-a843-43b4-99ed-006804c35d7e"


    # echo '------------------- VNET GATEWAY --------------------'

    # #az deployment group create --resource-group $resource_group --template-uri $AZ_IAC_LIBRARY_PATH"VirtualNetworkGateway/vpng.json" --parameters "EUS/vpng.parameters.json"
  
}


main() {
    echo "Start MAIN()"
    connect_deployment    
    echo "End MAIN()"
}


main