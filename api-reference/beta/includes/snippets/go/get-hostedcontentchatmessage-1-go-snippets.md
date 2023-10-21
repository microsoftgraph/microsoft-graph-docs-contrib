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



hostedContents, err := graphClient.Chats().ByChatId("chat-id").Messages().ByChatMessageId("chatMessage-id").HostedContents().ByChatMessageHostedContentId("chatMessageHostedContent-id").Get(context.Background(), nil)


```