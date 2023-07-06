---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversationThread()
isLocked := true
requestBody.SetIsLocked(&isLocked) 

result, err := graphClient.Groups().ByGroupId("group-id").Threads().ByThreadId("conversationThread-id").Patch(context.Background(), requestBody, nil)


```