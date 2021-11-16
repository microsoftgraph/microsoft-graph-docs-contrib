---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"id": "b2eba9a1-b357-42ee-83a8-336522ed6cbf",
	"accessPackageId": "4c02f928-7752-49aa-8fc8-e286d973a965",
	"displayName": "All Users",
	"description": "All users can request for access to the directory.",
	"canExtend": false,
	"durationInDays": ,
	"expirationDateTime": nil,
	"questions":  []Object {
	}
}
options := &msgraphsdk.AccessPackageAssignmentPolicyRequestBuilderPutOptions{
	Body: requestBody,
}
accessPackageAssignmentPolicyId := "accessPackageAssignmentPolicy-id"
graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPoliciesById(&accessPackageAssignmentPolicyId).Put(options)


```