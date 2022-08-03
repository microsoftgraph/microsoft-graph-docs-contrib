---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.ENTITYURL_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "https://graph.microsoft.com/v1.0/chats/{chatId}/messages/{messageId}"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "approvalRequired"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "Deployment requires your approval"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewTeamworkNotificationRecipient()
"@odata.type" := "Microsoft.Teams.GraphSvc.aadUserNotificationRecipient"
recipient.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"userId" : "jacob@contoso.com", 
}
recipient.SetAdditionalData(additionalData)
requestBody.SetRecipient(recipient)


keyValuePair := graphmodels.NewKeyValuePair()
name := "approvalTaskId"
keyValuePair.SetName(&name) 
value := "2020AAGGTAPP"
keyValuePair.SetValue(&value) 

templateParameters := []graphmodels.KeyValuePairable {
	keyValuePair,

}
requestBody.SetTemplateParameters(templateParameters)

graphClient.ChatsById("chat-id").SendActivityNotification().Post(requestBody)


```