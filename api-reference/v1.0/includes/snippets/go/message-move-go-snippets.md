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


requestBody := graphusers.NewItemMovePostRequestBody()
destinationId := "deleteditems"
requestBody.SetDestinationId(&destinationId) 

result, err := graphClient.Me().Messages().ByMessageId("message-id").Move().Post(context.Background(), requestBody, nil)


```