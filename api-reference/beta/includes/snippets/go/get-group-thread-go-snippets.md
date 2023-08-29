---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



threads, err := graphClient.Groups().ByGroupId("group-id").Threads().ByConversationThreadId("conversationThread-id").Get(context.Background(), nil)


```