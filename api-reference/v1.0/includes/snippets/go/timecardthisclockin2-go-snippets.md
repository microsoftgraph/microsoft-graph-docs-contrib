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

requestBody := graphteams.NewClockInPostRequestBody()
isAtApprovedLocation := true
requestBody.SetIsAtApprovedLocation(&isAtApprovedLocation) 
onBehalfOfUserId := "3f29c8e7-7a41-4d8e-99d6-2b1f76c9421e"
requestBody.SetOnBehalfOfUserId(&onBehalfOfUserId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
clockIn, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().ClockIn().Post(context.Background(), requestBody, nil)


```