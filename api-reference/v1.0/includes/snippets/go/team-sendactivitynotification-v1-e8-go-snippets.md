---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphteams.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.ENTITYURL_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "announcementPosted"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "new announcemnet posted"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
iconId := "announcementCreated"
requestBody.SetIconId(&iconId) 
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Teams().ByTeamId("team-id").SendActivityNotification().Post(context.Background(), requestBody, nil)


```