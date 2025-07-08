---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTimeCard()
userId := "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2"
requestBody.SetUserId(&userId) 
clockInEvent := graphmodels.NewTimeCardEvent()
dateTime , err := time.Parse(time.RFC3339, "2025-01-07T21:00:00.000Z")
clockInEvent.SetDateTime(&dateTime) 
isAtApprovedLocation := true
clockInEvent.SetIsAtApprovedLocation(&isAtApprovedLocation) 
notes := graphmodels.NewItemBody()
content := "Started late due to traffic in CA 237"
notes.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
clockInEvent.SetNotes(notes)
requestBody.SetClockInEvent(clockInEvent)
clockOutEvent := graphmodels.NewTimeCardEvent()
dateTime , err := time.Parse(time.RFC3339, "2025-01-07T21:30:00.000Z")
clockOutEvent.SetDateTime(&dateTime) 
isAtApprovedLocation := true
clockOutEvent.SetIsAtApprovedLocation(&isAtApprovedLocation) 
requestBody.SetClockOutEvent(clockOutEvent)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
timeCards, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().Post(context.Background(), requestBody, nil)


```