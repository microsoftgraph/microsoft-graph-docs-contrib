---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(3)

requestParameters := &graphteams.TeamItemChannelItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphteams.TeamItemChannelItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Get(context.Background(), configuration)


```