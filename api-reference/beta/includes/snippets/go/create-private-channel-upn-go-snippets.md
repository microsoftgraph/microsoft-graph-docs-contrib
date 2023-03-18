---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewChannel()
membershipType := graphmodels.PRIVATE_CHANNELMEMBERSHIPTYPE 
requestBody.SetMembershipType(&membershipType) 
displayName := "My First Private Channel"
requestBody.SetDisplayName(&displayName) 
description := "This is my first private channels"
requestBody.SetDescription(&description) 


conversationMember := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users('jacob@contoso.com')", 
}
conversationMember.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,

}
requestBody.SetMembers(members)

result, err := graphClient.TeamsById("team-id").Channels().Post(context.Background(), requestBody, nil)


```