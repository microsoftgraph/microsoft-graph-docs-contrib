---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPinnedChatMessageInfo()
additionalData := map[string]interface{}{
	"message@odata.bind" : "https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.ChatsById("chat-id").PinnedMessages().Post(requestBody)


```