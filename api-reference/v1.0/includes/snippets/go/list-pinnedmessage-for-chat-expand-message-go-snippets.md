---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ChatItemPinnedMessagesRequestBuilderGetQueryParameters{
	Expand: [] string {"message"},
}
configuration := &graphconfig.ChatItemPinnedMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").PinnedMessages().Get(context.Background(), configuration)


```