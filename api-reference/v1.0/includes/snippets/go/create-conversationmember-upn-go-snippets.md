---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewConversationMember()
requestBody.SetRoles( []String {
	"owner",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.aadUserConversationMember",
	"user@odata.bind": "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')",
}
options := &msgraphsdk.MembersRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Members().Post(options)


```