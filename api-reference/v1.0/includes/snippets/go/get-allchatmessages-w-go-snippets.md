---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "include-unknown-enum-members")


requestTop := int32(2)

requestParameters := &graphchats.ChatItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphchats.ChatItemMessagesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

messages, err := graphClient.Chats().ByChatId("chat-id").Messages().Get(context.Background(), configuration)


```