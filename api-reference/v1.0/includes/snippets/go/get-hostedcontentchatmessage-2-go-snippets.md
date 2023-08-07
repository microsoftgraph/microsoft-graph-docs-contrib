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



graphClient.Chats().ByChatId("chat-id").Messages().ByChatMessageId("chatMessage-id").HostedContents().ByChatMessageHostedContentId("chatMessageHostedContent-id").Value().Get(context.Background(), nil)


```