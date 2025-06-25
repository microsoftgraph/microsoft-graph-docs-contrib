---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTimeOffRequest()
senderMessage := "Need a break"
requestBody.SetSenderMessage(&senderMessage) 
timeOffReasonId := "TOR_08c42f26-9b83-492c-bf52-f3609eb083e3"
requestBody.SetTimeOffReasonId(&timeOffReasonId) 
senderUserId := "3f2504e0-4f89-11d3-9a0c-0305e82c3301"
requestBody.SetSenderUserId(&senderUserId) 
startDateTime , err := time.Parse(time.RFC3339, "2025-05-26T07:00:00Z")
requestBody.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2025-05-27T07:00:00Z")
requestBody.SetEndDateTime(&endDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
timeOffRequests, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeOffRequests().Post(context.Background(), requestBody, nil)


```