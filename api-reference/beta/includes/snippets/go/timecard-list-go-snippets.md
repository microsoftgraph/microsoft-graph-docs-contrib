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
requestFilter := "state eq 'clockedOut'"

requestParameters := &graphteams.TeamItemScheduleTimeCardsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Filter: &requestFilter,
}
configuration := &graphteams.TeamItemScheduleTimeCardsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().Get(context.Background(), configuration)


```