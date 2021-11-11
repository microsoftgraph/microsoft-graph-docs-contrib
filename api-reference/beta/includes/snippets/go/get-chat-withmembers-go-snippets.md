---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.ChatRequestBuilderGetQueryParameters{
	Expand: "members",
}
options := &msgraphsdk.ChatRequestBuilderGetOptions{
	Q: requestParameters,
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).Get(options)


```