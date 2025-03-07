---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphcommunications.NewStartHoldMusicPostRequestBody()
customPrompt := graphmodels.NewMediaPrompt()
mediaInfo := graphmodels.NewMediaInfo()
uri := "https://bot.contoso.com/onHold.wav"
mediaInfo.SetUri(&uri) 
customPrompt.SetMediaInfo(mediaInfo)
requestBody.SetCustomPrompt(customPrompt)
clientContext := "d45324c1-fcb5-430a-902c-f20af696537c"
requestBody.SetClientContext(&clientContext) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
startHoldMusic, err := graphClient.Communications().Calls().ByCallId("call-id").Participants().ByParticipantId("participant-id").StartHoldMusic().Post(context.Background(), requestBody, nil)


```