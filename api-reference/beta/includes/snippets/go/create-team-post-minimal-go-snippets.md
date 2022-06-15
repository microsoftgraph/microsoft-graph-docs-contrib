---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTeam()
displayName := "My Sample Team"
requestBody.SetDisplayName(&displayName)
description := "My Sample Team’s Description"
requestBody.SetDescription(&description)
requestBody.SetMembers( []ConversationMember {
	msgraphsdk.NewConversationMember(),
	SetRoles( []String {
		"owner",
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.aadUserConversationMember",
		"user@odata.bind": "https://graph.microsoft.com/beta/users('0040b377-61d8-43db-94f5-81374122dc7e')",
	}
}
requestBody.SetAdditionalData(map[string]interface{}{
	"template@odata.bind": "https://graph.microsoft.com/beta/teamsTemplates('standard')",
}
result, err := graphClient.Teams().Post(requestBody)


```