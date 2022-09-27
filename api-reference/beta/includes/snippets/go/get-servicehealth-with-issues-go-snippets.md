---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ServiceHealthRequestBuilderGetQueryParameters{
	Expand: [] string {"issues"},
}
configuration := &graphconfig.ServiceHealthRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Admin().ServiceAnnouncement().HealthOverviewsById("serviceHealth-id").Get(context.Background(), configuration)


```