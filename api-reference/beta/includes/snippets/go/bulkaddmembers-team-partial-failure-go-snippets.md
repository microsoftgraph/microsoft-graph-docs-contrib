---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddPostRequestBody()


conversationMember := graphmodels.NewConversationMember()
roles := []string {

}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
conversationMember1.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')", 
}
conversationMember1.SetAdditionalData(additionalData)

values := []graphmodels.Objectable {
	conversationMember,
	conversationMember1,

}
requestBody.SetValues(values)

result, err := graphClient.TeamsById("team-id").Members().Add().Post(requestBody)


```