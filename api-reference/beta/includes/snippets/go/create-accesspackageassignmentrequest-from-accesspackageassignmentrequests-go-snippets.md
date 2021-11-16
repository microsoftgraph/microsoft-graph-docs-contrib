---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAccessPackageAssignmentRequest()
requestType := "AdminRemove"
requestBody.SetRequestType(&requestType)
accessPackageAssignment := msgraphsdk.NewAccessPackageAssignment()
requestBody.SetAccessPackageAssignment(accessPackageAssignment)
accessPackageAssignment.SetAdditionalData(map[string]interface{}{
	"id": "a6bb6942-3ae1-4259-9908-0133aaee9377",
}
options := &msgraphsdk.AccessPackageAssignmentRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(options)


```