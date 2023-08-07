---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphteams.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.ENTITYURL_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "https://graph.microsoft.com/v1.0/teams/{teamId}"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "taskCreated"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "New Task Created"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewAadUserNotificationRecipient()
userId := "569363e2-4e49-4661-87f2-16f245c5d66a"
recipient.SetUserId(&userId) 
requestBody.SetRecipient(recipient)


keyValuePair := graphmodels.NewKeyValuePair()
name := "taskId"
keyValuePair.SetName(&name) 
value := "12322"
keyValuePair.SetValue(&value) 

templateParameters := []graphmodels.KeyValuePairable {
	keyValuePair,
}
requestBody.SetTemplateParameters(templateParameters)

graphClient.Teams().ByTeamId("team-id").SendActivityNotification().Post(context.Background(), requestBody, nil)


```