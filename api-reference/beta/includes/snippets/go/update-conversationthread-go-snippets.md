---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversationThread()
isLocked := true
requestBody.SetIsLocked(&isLocked) 

threads, err := graphClient.Groups().ByGroupId("group-id").Threads().ByConversationThreadId("conversationThread-id").Patch(context.Background(), requestBody, nil)


```