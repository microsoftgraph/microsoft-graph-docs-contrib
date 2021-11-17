---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.MessagesRequestBuilderGetQueryParameters{
	Top: 2,
}
options := &msgraphsdk.MessagesRequestBuilderGetOptions{
	Q: requestParameters,
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).Messages().Get(options)


```