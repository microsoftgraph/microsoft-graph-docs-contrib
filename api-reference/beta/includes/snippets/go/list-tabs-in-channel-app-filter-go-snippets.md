---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)


requestFilter := "teamsApp/id eq 'com.microsoft.teamspace.tab.planner'"

requestParameters := &graphteams.ItemChannelsItemTabsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
	Filter: &requestFilter,
}
configuration := &graphteams.ItemChannelsItemTabsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tabs, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Tabs().Get(context.Background(), configuration)


```