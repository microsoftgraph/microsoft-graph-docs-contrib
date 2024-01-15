---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(2)
requestFilter := "lastModifiedDateTime gt 2021-03-17T07:13:28.000z"

requestParameters := &graphusers.UserItemChatItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Filter: &requestFilter,
	Orderby: [] string {"createdDateTime desc"},
}
configuration := &graphusers.UserItemChatItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Users().ByUserId("user-id").Chats().ByChatId("chat-id").Messages().Get(context.Background(), configuration)


```