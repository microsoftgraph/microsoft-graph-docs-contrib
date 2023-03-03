---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.TEXT_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "Weekly Virtual Social"
topic.SetValue(&value) 
webUrl := "Teams webUrl"
topic.SetWebUrl(&webUrl) 
requestBody.SetTopic(topic)
previewText := graphmodels.NewItemBody()
content := "It will be fun!"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
activityType := "eventCreated"
requestBody.SetActivityType(&activityType) 
recipient := graphmodels.NewTeamworkNotificationRecipient()
additionalData := map[string]interface{}{
	"chatId" : "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2", 
}
recipient.SetAdditionalData(additionalData)
requestBody.SetRecipient(recipient)

graphClient.ChatsById("chat-id").SendActivityNotification().Post(context.Background(), requestBody, nil)


```