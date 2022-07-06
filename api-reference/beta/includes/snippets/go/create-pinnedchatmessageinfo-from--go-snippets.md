---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPinnedChatMessageInfo()
requestBody.SetAdditionalData(map[string]interface{}{
	"message@odata.bind": "https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832",
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).PinnedMessages().Post(requestBody)


```