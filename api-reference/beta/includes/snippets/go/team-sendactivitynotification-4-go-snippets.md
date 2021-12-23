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
value := "https://graph.microsoft.com/beta/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7"
topic.SetValue(&value)
activityType := "pendingFinanceApprovalRequests"
requestBody.SetActivityType(&activityType)
previewText := msgraphsdk.NewItemBody()
requestBody.SetPreviewText(previewText)
content := "Internal spending team has a pending finance approval requests"
previewText.SetContent(&content)
recipient := msgraphsdk.NewTeamworkNotificationRecipient()
requestBody.SetRecipient(recipient)
recipient.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.teamMembersNotificationRecipient",
	"teamId": "e8bece96-d393-4b9b-b8da-69cedef1a7e7",
}
requestBody.SetTemplateParameters( []KeyValuePair {
	msgraphsdk.NewKeyValuePair(),
	SetAdditionalData(map[string]interface{}{
		"name": "pendingRequestCount",
		"value": "5",
	}
}
options := &msgraphsdk.SendActivityNotificationRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
graphClient.TeamsById(&teamId).SendActivityNotification().Post(options)


```