---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"resources"},
}
configuration := &graphconfig.AssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").Assignments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```