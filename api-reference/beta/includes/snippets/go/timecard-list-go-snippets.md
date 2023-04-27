---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(2)
requestFilter := "state eq 'clockedOut'"

requestParameters := &graphconfig.TeamItemScheduleTimeCardsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Filter: &requestFilter,
}
configuration := &graphconfig.TeamItemScheduleTimeCardsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().Get(context.Background(), configuration)


```