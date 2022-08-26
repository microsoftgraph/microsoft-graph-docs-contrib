---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"If-Match": "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"",
}
configuration := &graphconfig.DelegatedAdminAccessAssignmentRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewDelegatedAdminAccessAssignment()
accessDetails := graphmodels.NewDelegatedAdminAccessDetails()


unifiedRole := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "88d8e3e3-8f55-4a1e-953a-9b9898b8876b", 
}
unifiedRole.SetAdditionalData(additionalData)
unifiedRole1 := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "44367163-eba1-44c3-98af-f5787879f96a", 
}
unifiedRole1.SetAdditionalData(additionalData)
unifiedRole2 := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "729827e3-9c14-49f7-bb1b-9608f156bbb8", 
}
unifiedRole2.SetAdditionalData(additionalData)

unifiedRoles := []graphmodels.UnifiedRoleable {
	unifiedRole,
	unifiedRole1,
	unifiedRole2,

}
accessDetails.SetUnifiedRoles(unifiedRoles)
requestBody.SetAccessDetails(accessDetails)

graphClient.TenantRelationships().DelegatedAdminRelationshipsById("delegatedAdminRelationship-id").AccessAssignmentsById("delegatedAdminAccessAssignment-id").PatchWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```