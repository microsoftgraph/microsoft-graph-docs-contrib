---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphadmin.AdminServiceAnnouncementHealthOverviewsRequestBuilderGetQueryParameters{
	Expand: [] string {"issues"},
}
configuration := &graphadmin.AdminServiceAnnouncementHealthOverviewsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

healthOverviews, err := graphClient.Admin().ServiceAnnouncement().HealthOverviews().Get(context.Background(), configuration)


```