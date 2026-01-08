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

requestBody := graphteams.NewEndBreakPostRequestBody()
isAtApprovedLocation := true
requestBody.SetIsAtApprovedLocation(&isAtApprovedLocation) 
notes := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
content := "ending break"
notes.SetContent(&content) 
requestBody.SetNotes(notes)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
endBreak, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().ByTimeCardId("timeCard-id").EndBreak().Post(context.Background(), requestBody, nil)


```