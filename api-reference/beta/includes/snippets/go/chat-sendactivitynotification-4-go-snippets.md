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
value := "https://graph.microsoft.com/beta/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "taskCreated"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "New Task Created"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewTeamworkNotificationRecipient()
"@odata.type" := "microsoft.graph.chatMembersNotificationRecipient"
recipient.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"chatId" : "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2", 
}
recipient.SetAdditionalData(additionalData)
requestBody.SetRecipient(recipient)


keyValuePair := graphmodels.NewKeyValuePair()
name := "taskId"
keyValuePair.SetName(&name) 
value := "Task 12322"
keyValuePair.SetValue(&value) 

templateParameters := []graphmodels.KeyValuePairable {
	keyValuePair,

}
requestBody.SetTemplateParameters(templateParameters)

graphClient.ChatsById("chat-id").SendActivityNotification().Post(requestBody)


```