---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.TeamItemChannelItemTabsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
}
configuration := &graphconfig.TeamItemChannelItemTabsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Tabs().Get(context.Background(), configuration)


```