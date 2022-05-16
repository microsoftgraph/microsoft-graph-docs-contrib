---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AssignmentsRequestBuilderGetQueryParameters{
	Expand: "resources",
}
options := &msgraphsdk.AssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
educationClassId := "educationClass-id"
result, err := graphClient.Education().ClassesById(&educationClassId).Assignments().GetWithRequestConfigurationAndResponseHandler(options, nil)


```