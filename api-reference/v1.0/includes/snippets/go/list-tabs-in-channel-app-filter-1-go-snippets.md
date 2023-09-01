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


requestParameters := &graphteams.TeamItemChannelItemTabsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
}
configuration := &graphteams.TeamItemChannelItemTabsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

tabs, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Tabs().Get(context.Background(), configuration)


```