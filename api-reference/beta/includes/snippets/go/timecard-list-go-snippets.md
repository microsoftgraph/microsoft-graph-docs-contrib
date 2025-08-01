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


requestTop := int32(2)
requestFilter := "state eq 'clockedOut'"

requestParameters := &graphteams.ItemScheduleTimeCardsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Filter: &requestFilter,
}
configuration := &graphteams.ItemScheduleTimeCardsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
timeCards, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().Get(context.Background(), configuration)


```