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
	SetRoles( []String {
		"owner",
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.aadUserConversationMember",
		"user@odata.bind": "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')",
	}
	msgraphsdk.NewConversationMember(),
	SetRoles( []String {
		"owner",
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.aadUserConversationMember",
		"user@odata.bind": "https://graph.microsoft.com/v1.0/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')",
		"tenantId": "4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1",
	}
}
result, err := graphClient.Chats().Post(requestBody)


```