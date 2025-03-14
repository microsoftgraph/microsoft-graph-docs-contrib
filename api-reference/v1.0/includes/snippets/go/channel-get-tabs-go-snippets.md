---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

requestParameters := &graphteams.ItemChannelsItemTabsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
}
configuration := &graphteams.ItemChannelsItemTabsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tabs, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Tabs().ByTeamsTabId("teamsTab-id").Get(context.Background(), configuration)


```