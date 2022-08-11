---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChat()
chatType := graphmodels.ONEONONE_CHATTYPE 
requestBody.SetChatType(&chatType) 


conversationMember := graphmodels.NewConversationMember()
"@odata.type" := "#microsoft.graph.aadUserConversationMember"
conversationMember.Set"@odata.type"(&"@odata.type") 
roles := []string {
	"owner",

}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewConversationMember()
"@odata.type" := "#microsoft.graph.aadUserConversationMember"
conversationMember1.Set"@odata.type"(&"@odata.type") 
roles := []string {
	"owner",

}
conversationMember1.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')", 
	"tenantId" : "4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1", 
}
conversationMember1.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,
	conversationMember1,

}
requestBody.SetMembers(members)

result, err := graphClient.Chats().Post(requestBody)


```