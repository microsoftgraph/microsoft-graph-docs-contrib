---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConversationMember()
requestBody.SetRoles( []string {
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.aadUserConversationMember",
	"user@odata.bind": "https://graph.microsoft.com/beta/users/bc3598dd-cce4-4742-ae15-173429951408",
	"tenantId": "a18103d1-a6ef-4f66-ac64-e4ef42ea8681",
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Members().Post(requestBody)


```