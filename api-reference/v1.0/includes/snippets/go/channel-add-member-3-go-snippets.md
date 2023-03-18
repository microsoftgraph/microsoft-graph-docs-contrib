---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
requestBody.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").Members().Post(context.Background(), requestBody, nil)


```