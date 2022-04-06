---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.HealthOverviewsRequestBuilderGetQueryParameters{
	Expand: "issues",
}
options := &msgraphsdk.HealthOverviewsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Admin().ServiceAnnouncement().HealthOverviews().Get(options)


```