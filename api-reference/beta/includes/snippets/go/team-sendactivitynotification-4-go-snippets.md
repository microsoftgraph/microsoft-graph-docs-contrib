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
value := "https://graph.microsoft.com/beta/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "pendingFinanceApprovalRequests"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "Internal spending team has a pending finance approval requests"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewTeamworkNotificationRecipient()
"@odata.type" := "microsoft.graph.teamMembersNotificationRecipient"
recipient.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"teamId" : "e8bece96-d393-4b9b-b8da-69cedef1a7e7", 
}
recipient.SetAdditionalData(additionalData)
requestBody.SetRecipient(recipient)


keyValuePair := graphmodels.NewKeyValuePair()
name := "pendingRequestCount"
keyValuePair.SetName(&name) 
value := "5"
keyValuePair.SetValue(&value) 

templateParameters := []graphmodels.KeyValuePairable {
	keyValuePair,

}
requestBody.SetTemplateParameters(templateParameters)

graphClient.TeamsById("team-id").SendActivityNotification().Post(requestBody)


```