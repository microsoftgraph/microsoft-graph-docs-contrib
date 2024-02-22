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


requestBody := graphcommunications.NewMutePostRequestBody()
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 

mute, err := graphClient.Communications().Calls().ByCallId("call-id").Mute().Post(context.Background(), requestBody, nil)


```