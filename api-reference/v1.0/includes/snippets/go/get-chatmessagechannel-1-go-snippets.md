---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



messages, err := graphClient.Chats().ByChatId("chat-id").Messages().ByChatMessageId("chatMessage-id").Get(context.Background(), nil)


```