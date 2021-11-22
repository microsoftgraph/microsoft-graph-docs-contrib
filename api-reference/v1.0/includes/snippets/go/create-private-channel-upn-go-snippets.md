---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChannel()
membershipType := "private"
requestBody.SetMembershipType(&membershipType)
displayName := "My First Private Channel"
requestBody.SetDisplayName(&displayName)
description := "This is my first private channels"
requestBody.SetDescription(&description)
requestBody.SetMembers( []ConversationMember {
	msgraphsdk.NewConversationMember(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.aadUserConversationMember",
		"user@odata.bind": "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')",
		"roles":  []String {
			"owner",
		}
	}
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#Microsoft.Graph.channel",
}
options := &msgraphsdk.ChannelsRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Channels().Post(options)


```