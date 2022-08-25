---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"If-Match": "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"",
}
configuration := &graphconfig.DelegatedAdminRelationshipRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewDelegatedAdminRelationship()
displayName := "Updated Contoso admin relationship"
requestBody.SetDisplayName(&displayName) 
duration , err := abstractions.ParseISODuration("P31D")
requestBody.SetDuration(&duration) 
customer := graphmodels.NewDelegatedAdminRelationshipCustomerParticipant()
tenantId := "52eaad04-13a2-4a2f-9ce8-93a294fadf36"
customer.SetTenantId(&tenantId) 
requestBody.SetCustomer(customer)
accessDetails := graphmodels.NewDelegatedAdminAccessDetails()


unifiedRole := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "44367163-eba1-44c3-98af-f5787879f96a", 
}
unifiedRole.SetAdditionalData(additionalData)
unifiedRole1 := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "29232cdf-9323-42fd-ade2-1d097af3e4de", 
}
unifiedRole1.SetAdditionalData(additionalData)
unifiedRole2 := graphmodels.NewUnifiedRole()
additionalData := map[string]interface{}{
	"roleDefinitionId" : "69091246-20e8-4a56-aa4d-066075b2a7a8", 
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

graphClient.TenantRelationships().DelegatedAdminRelationshipsById("delegatedAdminRelationship-id").PatchWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```