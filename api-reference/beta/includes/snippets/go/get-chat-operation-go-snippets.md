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



operations, err := graphClient.Chats().ByChatId("chat-id").Operations().ByTeamsAsyncOperationId("teamsAsyncOperation-id").Get(context.Background(), nil)


```