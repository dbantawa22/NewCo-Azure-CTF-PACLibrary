targetScope = 'managementGroup'

resource id2caf6f37_0cb0_491c_bb7f_783cf7700965 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id2caf6f37-0cb0-491c-bb7f-783cf7700965'
  properties: {
    displayName: 'Audit - Sample Products should be removed from API Management'
    description: 'This policy audits API Management services that do not have the two default sample products deleted, Starter and Unlimited. Unless the access control of these Sample Products is being strictly regulated, associating APIs to these products stands the chance of exposing APIs to unauthenticated users. If either are not deleted, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: APIManagement'
    }
    policyRule: {
      if: {
        anyOf: [
          {
            field: 'Microsoft.ApiManagement/service/products/displayName'
            equals: 'Starter'
          }
          {
            field: 'Microsoft.ApiManagement/service/products/displayName'
            equals: 'Unlimited'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
