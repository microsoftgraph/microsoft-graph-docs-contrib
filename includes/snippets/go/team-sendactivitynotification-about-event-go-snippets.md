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
}
recipient.SetAdditionalData(additionalData)
requestBody.SetRecipient(recipient)

graphClient.TeamsById("team-id").MicrosoftGraphSendActivityNotification().Post(context.Background(), requestBody, nil)


```