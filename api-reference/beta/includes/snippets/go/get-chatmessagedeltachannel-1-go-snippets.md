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



requestTop := int32(2)

requestParameters := &graphteams.TeamItemChannelItemMessagesDelta()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphteams.TeamItemChannelItemMessagesDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Delta().Get(context.Background(), configuration)


```