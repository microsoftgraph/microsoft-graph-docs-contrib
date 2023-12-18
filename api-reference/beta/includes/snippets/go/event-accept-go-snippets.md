---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemAcceptPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 
sendResponse := true
requestBody.SetSendResponse(&sendResponse) 

graphClient.Me().Events().ByEventId("event-id").Accept().Post(context.Background(), requestBody, nil)


```