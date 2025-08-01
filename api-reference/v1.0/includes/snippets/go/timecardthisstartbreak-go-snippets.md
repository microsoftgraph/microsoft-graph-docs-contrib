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
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphteams.NewStartBreakPostRequestBody()
isAtApprovedLocation := true
requestBody.SetIsAtApprovedLocation(&isAtApprovedLocation) 
notes := graphmodels.NewItemBody()
content := "Starting break late to make up for late clockin"
notes.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
requestBody.SetNotes(notes)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
startBreak, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().ByTimeCardId("timeCard-id").StartBreak().Post(context.Background(), requestBody, nil)


```