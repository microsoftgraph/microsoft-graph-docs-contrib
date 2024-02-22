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


requestBody := graphcommunications.NewSubscribeToTonePostRequestBody()
clientContext := "fd1c7836-4d84-4e24-b6aa-23188688cc54"
requestBody.SetClientContext(&clientContext) 

subscribeToTone, err := graphClient.Communications().Calls().ByCallId("call-id").SubscribeToTone().Post(context.Background(), requestBody, nil)


```