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
	"teamId" : "7155e3c8-175e-4311-97ef-572edc3aa3db", 
	"channelId" : "19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2", 
}
recipient.SetAdditionalData(additionalData)
requestBody.SetRecipient(recipient)

graphClient.TeamsById("team-id").SendActivityNotification().Post(context.Background(), requestBody, nil)


```