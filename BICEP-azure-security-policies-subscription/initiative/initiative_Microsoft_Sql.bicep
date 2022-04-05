targetScope = 'subscription'

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// CALLING EXISTING POLICIES ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource idcdf2b54c_3c97_4e96_8267_ae66c1b59a28 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idcdf2b54c-3c97-4e96-8267-ae66c1b59a28'
}

resource id7669c32a_8782_4a3c_9ac3_a14a9280cdec 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id7669c32a-8782-4a3c-9ac3-a14a9280cdec'
}

resource id0a9e66cc_9b33_4d48_86d7_63c14a866f2c 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id0a9e66cc-9b33-4d48-86d7-63c14a866f2c'
}

resource idb1da485d_6193_42a0_827d_3ffa343186e2 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idb1da485d-6193-42a0-827d-3ffa343186e2'
}

resource idbc63e167_52a1_47ea_8d87_f93819c08e37 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idbc63e167-52a1-47ea-8d87-f93819c08e37'
}

resource idb2100885_2e0b_45af_bb72_9811253b0edf 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idb2100885-2e0b-45af-bb72-9811253b0edf'
}

resource iddb20f425_8fd6_4571_97e9_cf64d05c7c77 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'iddb20f425-8fd6-4571-97e9-cf64d05c7c77'
}

resource id3a903ff9_5e5e_4400_a4f0_1db231c927c8 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id3a903ff9-5e5e-4400-a4f0-1db231c927c8'
}

resource id0717ac5b_d027_4e26_8654_a2e5d6c76536 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'id0717ac5b-d027-4e26-8654-a2e5d6c76536'
}

resource idf2a56aa5_6614_4b6d_9481_13a5373149ad 'Microsoft.Authorization/policydefinitions@2020-09-01' existing = {
  name: 'idf2a56aa5-6614-4b6d-9481-13a5373149ad'
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// Variables for Initiatives ////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// Initiatives ///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

resource initiative_Microsoft_Sql 'Microsoft.Authorization/policySetDefinitions@2020-09-01' = {
	name: 'initiative_Microsoft_Sql'
	properties: {
		displayName: 'Avanade: Microsoft_Sql'
		description: 'Grouping of policies that belong to the resource provider Microsoft_Sql'
		policyType: 'Custom'
		metadata: {
			category: 'Avanade: Sql'
		}
		policyDefinitions: [
			{
				policyDefinitionId: idcdf2b54c_3c97_4e96_8267_ae66c1b59a28.id
			}
			{
				policyDefinitionId: id7669c32a_8782_4a3c_9ac3_a14a9280cdec.id
			}
			{
				policyDefinitionId: id0a9e66cc_9b33_4d48_86d7_63c14a866f2c.id
			}
			{
				policyDefinitionId: idb1da485d_6193_42a0_827d_3ffa343186e2.id
			}
			{
				policyDefinitionId: idbc63e167_52a1_47ea_8d87_f93819c08e37.id
			}
			{
				policyDefinitionId: idb2100885_2e0b_45af_bb72_9811253b0edf.id
			}
			{
				policyDefinitionId: iddb20f425_8fd6_4571_97e9_cf64d05c7c77.id
			}
			{
				policyDefinitionId: id3a903ff9_5e5e_4400_a4f0_1db231c927c8.id
			}
			{
				policyDefinitionId: id0717ac5b_d027_4e26_8654_a2e5d6c76536.id
			}
			{
				policyDefinitionId: idf2a56aa5_6614_4b6d_9481_13a5373149ad.id
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/7698e800-9299-47a6-b3b6-5a0fee576eed'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/dfbd9a64-6114-48de-a47d-90574dc2e489'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/3375856c-3824-4e0e-ae6a-79e011dd4c47'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/3c14b034-bcb6-4905-94e7-5b8e98a47b65'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/0a1302fb-a631-4106-9753-f3d494733990'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/7595c971-233d-4bcf-bd18-596129188c49'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/0564d078-92f5-4f97-8398-b9f58a51f70b'
			}
			{
				policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/32e6bbec-16b6-44c2-be37-c5b672d103cf'
			}
		]
	}
}
