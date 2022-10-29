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
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('jacob@contoso.com')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
conversationMember1.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('alex@contoso.com')", 
}
conversationMember1.SetAdditionalData(additionalData)

values := []graphmodels.Objectable {
	conversationMember,
	conversationMember1,

}
requestBody.SetValues(values)

result, err := graphClient.TeamsById("team-id").Members().Add().Post(context.Background(), requestBody, nil)


```