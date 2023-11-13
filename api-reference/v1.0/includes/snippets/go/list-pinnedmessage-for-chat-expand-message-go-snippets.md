---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphchats.ChatItemPinnedMessagesRequestBuilderGetQueryParameters{
	Expand: [] string {"message"},
}
configuration := &graphchats.ChatItemPinnedMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

pinnedMessages, err := graphClient.Chats().ByChatId("chat-id").PinnedMessages().Get(context.Background(), configuration)


```