---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-beta-sdk-go/chats"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(2)

requestParameters := &graphchats.ChatItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Orderby: [] string {"createdDateTime desc"},
}
configuration := &graphchats.ChatItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Chats().ByChatId("chat-id").Messages().Get(context.Background(), configuration)


```