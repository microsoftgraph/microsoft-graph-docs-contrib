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


requestBody := graphusers.NewItemCancelPostRequestBody()
comment := "Cancelling for this week due to all hands"
requestBody.SetComment(&comment) 

graphClient.Me().Events().ByEventId("event-id").Cancel().Post(context.Background(), requestBody, nil)


```