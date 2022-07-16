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
value := "https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/tabs/{tabId}"
topic.SetValue(&value)
activityType := "reservationUpdated"
requestBody.SetActivityType(&activityType)
previewText := msgraphsdk.NewItemBody()
requestBody.SetPreviewText(previewText)
content := "You have moved up the queue"
previewText.SetContent(&content)
recipient := msgraphsdk.NewTeamworkNotificationRecipient()
requestBody.SetRecipient(recipient)
recipient.SetAdditionalData(map[string]interface{}{
	"@odata.type": "Microsoft.Teams.GraphSvc.aadUserNotificationRecipient",
	"userId": "jacob@contoso.com",
}
requestBody.SetTemplateParameters( []KeyValuePair {
	msgraphsdk.NewKeyValuePair(),
name := "reservationId"
	SetName(&name)
value := "TREEE433"
	SetValue(&value)
	msgraphsdk.NewKeyValuePair(),
name := "currentSlot"
	SetName(&name)
value := "23"
	SetValue(&value)
}
teamId := "team-id"
graphClient.TeamsById(&teamId).SendActivityNotification(team-id).Post(requestBody)


```