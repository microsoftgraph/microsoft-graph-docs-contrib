---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChatMessage()
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
content := "Hello world"
body.SetContent(&content)
options := &msgraphsdk.MessagesRequestBuilderPostOptions{
	Body: requestBody,
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).Messages().Post(options)


```