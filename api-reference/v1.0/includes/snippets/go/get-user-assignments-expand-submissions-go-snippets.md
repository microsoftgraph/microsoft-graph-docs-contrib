---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AssignmentsRequestBuilderGetQueryParameters{
	Expand: "submissions",
}
options := &msgraphsdk.AssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
educationUserId := "educationUser-id"
result, err := graphClient.Education().UsersById(&educationUserId).Assignments().GetWithRequestConfigurationAndResponseHandler(options, nil)


```