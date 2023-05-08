---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Teams/Item/SendActivityNotification"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.ENTITYURL_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/tabs/{tabId}"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "reservationUpdated"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "You have moved up the queue"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewTeamworkNotificationRecipient()
additionalData := map[string]interface{}{
	"userId" : "569363e2-4e49-4661-87f2-16f245c5d66a", 
}
recipient.SetAdditionalData(additionalData)
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