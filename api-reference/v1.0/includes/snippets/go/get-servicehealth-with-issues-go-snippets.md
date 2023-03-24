---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.AdminServiceAnnouncementHealthOverviewItemRequestBuilderGetQueryParameters{
	Expand: [] string {"issues"},
}
configuration := &graphconfig.AdminServiceAnnouncementHealthOverviewItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Admin().ServiceAnnouncement().HealthOverviewsById("serviceHealth-id").Get(context.Background(), configuration)


```