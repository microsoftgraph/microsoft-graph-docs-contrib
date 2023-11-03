---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcommunications.NewCancelMediaProcessingPostRequestBody()
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 

cancelMediaProcessing, err := graphClient.Communications().Calls().ByCallId("call-id").CancelMediaProcessing().Post(context.Background(), requestBody, nil)


```