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



requestFilter := "membershipType eq 'shared'"

requestParameters := &graphteams.TeamItemChannelsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphteams.TeamItemChannelsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().ByTeamId("team-id").Channels().Get(context.Background(), configuration)


```