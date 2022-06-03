---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ServiceHealthRequestBuilderGetQueryParameters{
	Expand: "issues",
}
options := &msgraphsdk.ServiceHealthRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
serviceHealthId := "serviceHealth-id"
result, err := graphClient.Admin().ServiceAnnouncement().HealthOverviewsById(&serviceHealthId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```