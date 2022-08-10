---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDelegatedAdminAccessAssignment()
accessContainer := graphmodels.NewDelegatedAdminAccessContainer()
accessContainerId := "869713c9-0b28-4d08-8949-ae07ae1bf528"
accessContainer.SetAccessContainerId(&accessContainerId) 
accessContainerType := graphmodels.SECURITYGROUP_DELEGATEDADMINACCESSCONTAINERTYPE 
accessContainer.SetAccessContainerType(&accessContainerType) 
requestBody.SetAccessContainer(accessContainer)
accessDetails := graphmodels.NewDelegatedAdminAccessDetails()


unifiedRole := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "29232cdf-9323-42fd-ade2-1d097af3e4de", 
}
unifiedRole.SetAdditionalData(additionalData)
unifiedRole1 := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "f2ef992c-3afb-46b9-b7cf-a126ee74c451", 
}
unifiedRole1.SetAdditionalData(additionalData)
unifiedRole2 := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "729827e3-9c14-49f7-bb1b-9608f156bbb8", 
}
unifiedRole2.SetAdditionalData(additionalData)
unifiedRole3 := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "3a2c62db-5318-420d-8d74-23affee5d9d5", 
}
unifiedRole3.SetAdditionalData(additionalData)

unifiedRoles := []graphmodels.UnifiedRoleable {
	unifiedRole,
	unifiedRole1,
	unifiedRole2,
	unifiedRole3,

}
accessDetails.SetUnifiedRoles(unifiedRoles)
requestBody.SetAccessDetails(accessDetails)

result, err := graphClient.TenantRelationships().DelegatedAdminRelationshipsById("delegatedAdminRelationship-id").AccessAssignments().Post(requestBody)


```