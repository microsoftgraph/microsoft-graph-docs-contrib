---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageAssignmentRequest()
requestType := "userAdd"
requestBody.SetRequestType(&requestType)
assignment := msgraphsdk.NewAccessPackageAssignment()
requestBody.SetAssignment(assignment)
assignment.SetAdditionalData(map[string]interface{}{
	"accessPackageId": "d7be3253-b9c6-4fab-adef-30d30de8da2b",
}
options := &msgraphsdk.AssignmentRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(options)


```