---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Communications/Calls/Item/Participants/Item/Mute"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMutePostRequestBody()
clientContext := "d45324c1-fcb5-430a-902c-f20af696537c"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().Calls().ByCallId("call-id").Participants().ByParticipantId("participant-id").Mute().Post(context.Background(), requestBody, nil)


```