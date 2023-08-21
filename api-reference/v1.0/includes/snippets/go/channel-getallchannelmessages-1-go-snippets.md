---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z"

requestParameters := &graphteams.TeamItemChannelsGetAllMessages()RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphteams.TeamItemChannelsGetAllMessages()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

getAllMessages(), err := graphClient.Teams().ByTeamId("team-id").Channels().GetAllMessages().Get(context.Background(), configuration)


```