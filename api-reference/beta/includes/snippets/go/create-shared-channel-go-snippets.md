---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChannel()
displayName := "My First Shared Channel"
requestBody.SetDisplayName(&displayName)
description := "This is my first shared channel"
requestBody.SetDescription(&description)
membershipType := "shared"
requestBody.SetMembershipType(&membershipType)
requestBody.SetMembers( []ConversationMember {
	msgraphsdk.NewConversationMember(),
	SetRoles( []String {
		"owner",
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.aadUserConversationMember",
		"user@odata.bind": "https://graph.microsoft.com/beta/users('7640023f-fe43-gv3f-9gg4-84a9efe4acd6')",
	}
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Channels().Post(requestBody)


```