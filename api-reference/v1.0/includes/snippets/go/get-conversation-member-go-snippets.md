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



members, err := graphClient.Chats().ByChatId("chat-id").Members().ByConversationMemberId("conversationMember-id").Get(context.Background(), nil)


```