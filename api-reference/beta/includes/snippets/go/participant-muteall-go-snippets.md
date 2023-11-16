---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcommunications.NewMuteAllPostRequestBody()
participants := []string {
	"",
}
requestBody.SetParticipants(participants)
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 

muteAll, err := graphClient.Communications().Calls().ByCallId("call-id").Participants().MuteAll().Post(context.Background(), requestBody, nil)


```