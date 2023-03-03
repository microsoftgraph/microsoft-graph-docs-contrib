---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AdminServiceAnnouncementHealthOverviewsRequestBuilderGetQueryParameters{
	Expand: [] string {"issues"},
}
configuration := &graphconfig.AdminServiceAnnouncementHealthOverviewsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Admin().ServiceAnnouncement().HealthOverviews().Get(context.Background(), configuration)


```