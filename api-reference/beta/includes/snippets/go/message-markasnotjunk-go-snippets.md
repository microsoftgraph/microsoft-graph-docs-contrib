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


requestBody := graphusers.NewItemMarkAsNotJunkPostRequestBody()
moveToInbox := true
requestBody.SetMoveToInbox(&moveToInbox) 

result, err := graphClient.Me().Messages().ByMessageId("message-id").MarkAsNotJunk().Post(context.Background(), requestBody, nil)


```