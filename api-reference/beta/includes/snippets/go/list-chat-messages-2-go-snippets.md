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
requestFilter := "lastModifiedDateTime gt 2022-09-22T00:00:00.000Z and lastModifiedDateTime lt 2022-09-24T00:00:00.000Z"

requestParameters := &graphchats.ChatItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Orderby: [] string {"lastModifiedDateTime desc"},
	Filter: &requestFilter,
}
configuration := &graphchats.ChatItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Chats().ByChatId("chat-id").Messages().Get(context.Background(), configuration)


```