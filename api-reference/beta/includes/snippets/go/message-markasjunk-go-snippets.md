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


requestBody := graphusers.NewItemMarkAsJunkPostRequestBody()
moveToJunk := true
requestBody.SetMoveToJunk(&moveToJunk) 

result, err := graphClient.Me().Messages().ByMessageId("message-id").MarkAsJunk().Post(context.Background(), requestBody, nil)


```