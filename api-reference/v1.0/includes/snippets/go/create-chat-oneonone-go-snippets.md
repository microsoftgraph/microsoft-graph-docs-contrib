---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChat()
chatType := "oneOnOne"
requestBody.SetChatType(&chatType)
requestBody.SetMembers( []ConversationMember {
	msgraphsdk.NewConversationMember(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.aadUserConversationMember",
		"roles":  []String {
			"owner",
		}
		"user@odata.bind": "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')",
	}
	msgraphsdk.NewConversationMember(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.aadUserConversationMember",
		"roles":  []String {
			"owner",
		}
		"user@odata.bind": "https://graph.microsoft.com/v1.0/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')",
	}
}
options := &msgraphsdk.ChatsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Chats().Post(options)


```