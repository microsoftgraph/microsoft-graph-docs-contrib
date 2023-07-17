---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphteams.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.ENTITYURL_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/tabs/{tabId}"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "reservationUpdated"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "You have moved up the queue"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewAadUserNotificationRecipient()
userId := "jacob@contoso.com"
recipient.SetUserId(&userId) 
requestBody.SetRecipient(recipient)


keyValuePair := graphmodels.NewKeyValuePair()
name := "reservationId"
keyValuePair.SetName(&name) 
value := "TREEE433"
keyValuePair.SetValue(&value) 
keyValuePair1 := graphmodels.NewKeyValuePair()
name := "currentSlot"
keyValuePair1.SetName(&name) 
value := "23"
keyValuePair1.SetValue(&value) 

templateParameters := []graphmodels.KeyValuePairable {
	keyValuePair,
	keyValuePair1,
}
requestBody.SetTemplateParameters(templateParameters)

graphClient.Teams().ByTeamId("team-id").SendActivityNotification().Post(context.Background(), requestBody, nil)


```