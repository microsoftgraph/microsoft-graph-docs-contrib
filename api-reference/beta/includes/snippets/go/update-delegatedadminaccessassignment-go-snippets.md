---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDelegatedAdminAccessAssignment()
accessDetails := msgraphsdk.NewDelegatedAdminAccessDetails()
requestBody.SetAccessDetails(accessDetails)
accessDetails.SetUnifiedRoles( []UnifiedRole {
	msgraphsdk.NewUnifiedRole(),
	SetAdditionalData(map[string]interface{}{
		"roleDefinitionId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b",
	}
	msgraphsdk.NewUnifiedRole(),
	SetAdditionalData(map[string]interface{}{
		"roleDefinitionId": "44367163-eba1-44c3-98af-f5787879f96a",
	}
	msgraphsdk.NewUnifiedRole(),
	SetAdditionalData(map[string]interface{}{
		"roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8",
	}
}
headers := map[string]string{
	"If-Match": "W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==""
}
options := &msgraphsdk.DelegatedAdminAccessAssignmentRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
delegatedAdminRelationshipId := "delegatedAdminRelationship-id"
delegatedAdminAccessAssignmentId := "delegatedAdminAccessAssignment-id"
graphClient.TenantRelationships().DelegatedAdminRelationshipsById(&delegatedAdminRelationshipId).AccessAssignmentsById(&delegatedAdminAccessAssignmentId).PatchWithRequestConfigurationAndResponseHandler(requestBody, options, nil)


```