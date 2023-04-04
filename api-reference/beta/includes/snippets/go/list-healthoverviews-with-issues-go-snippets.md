---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.AdminServiceAnnouncementHealthOverviewsRequestBuilderGetQueryParameters{
	Expand: [] string {"issues"},
}
configuration := &graphconfig.AdminServiceAnnouncementHealthOverviewsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Admin().ServiceAnnouncement().HealthOverviews().Get(context.Background(), configuration)


```