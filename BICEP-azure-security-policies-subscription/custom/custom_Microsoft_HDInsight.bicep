targetScope = 'subscription'

resource id3a51db6c_0e50_4a35_8ccc_8b6417029d6b 'Microsoft.Authorization/policydefinitions@2020-09-01' = {
  name: 'id3a51db6c-0e50-4a35-8ccc-8b6417029d6b'
  properties: {
    displayName: 'Audit - HDInsight should have its Virtual Network enabled'
    description: 'This policy audits if the Virtual Network within HDInsights is enabled. If it is disabled, you will be out of compliance.'
    parameters: {}
    metadata: {
      category: 'Avanade: HDInsight'
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.HDInsight/clusters'
          }
          {
            field: 'microsoft.HDInsight/clusters/computeProfile.roles[*].virtualNetworkProfile.id'
            exists: 'false'
          }
        ]
      }
      then: {
        effect: 'audit'
      }
    }
  }
}
