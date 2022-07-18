---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.PinnedMessagesRequestBuilderGetQueryParameters{
	Expand: "message",
}
options := &msgraphsdk.PinnedMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).PinnedMessages().GetWithRequestConfigurationAndResponseHandler(options, nil)


```