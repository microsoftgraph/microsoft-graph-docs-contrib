---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemTentativelyAcceptPostRequestBody()
comment := "I will probably be able to make it."
requestBody.SetComment(&comment) 
sendResponse := true
requestBody.SetSendResponse(&sendResponse) 

graphClient.Me().Events().ByEventId("event-id").TentativelyAccept().Post(context.Background(), requestBody, nil)


```