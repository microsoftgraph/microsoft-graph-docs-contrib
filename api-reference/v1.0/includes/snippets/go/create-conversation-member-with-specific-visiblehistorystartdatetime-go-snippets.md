---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConversationMember()
visibleHistoryStartDateTime, err := time.Parse(time.RFC3339, "2019-04-18T23:51:43.255Z")
requestBody.SetVisibleHistoryStartDateTime(&visibleHistoryStartDateTime)
requestBody.SetRoles( []String {
	"owner",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.aadUserConversationMember",
	"user@odata.bind": "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
}
options := &msgraphsdk.MembersRequestBuilderPostOptions{
	Body: requestBody,
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).Members().Post(options)


```