---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
topic := msgraphsdk.NewTeamworkActivityTopic()
requestBody.SetTopic(topic)
source := "entityUrl"
topic.SetSource(&source)
value := "https://graph.microsoft.com/beta/chats/{chatId}/messages/{messageId}"
topic.SetValue(&value)
activityType := "approvalRequired"
requestBody.SetActivityType(&activityType)
previewText := msgraphsdk.NewItemBody()
requestBody.SetPreviewText(previewText)
content := "Deployment requires your approval"
previewText.SetContent(&content)
recipient := msgraphsdk.NewTeamworkNotificationRecipient()
requestBody.SetRecipient(recipient)
recipient.SetAdditionalData(map[string]interface{}{
	"@odata.type": "Microsoft.Teams.GraphSvc.aadUserNotificationRecipient",
	"userId": "jacob@contoso.com",
}
requestBody.SetTemplateParameters( []KeyValuePair {
	msgraphsdk.NewKeyValuePair(),
name := "approvalTaskId"
	SetName(&name)
value := "2020AAGGTAPP"
	SetValue(&value)
}
chatId := "chat-id"
graphClient.ChatsById(&chatId).SendActivityNotification(chat-id).Post(requestBody)


```