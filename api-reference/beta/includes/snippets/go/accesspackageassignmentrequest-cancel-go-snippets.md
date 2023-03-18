---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewCancelPostRequestBody()
additionalData := map[string]interface{}{
	"id" : "request-id", 
	"requestStatus" : "cancelled", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequestsById("accessPackageAssignmentRequest-id").Cancel().Post(context.Background(), requestBody, nil)


```