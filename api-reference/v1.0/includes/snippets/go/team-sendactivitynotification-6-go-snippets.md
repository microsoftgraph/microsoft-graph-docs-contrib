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
value := "https://graph.microsoft.com/v1.0/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "pendingFinanceApprovalRequests"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "Internal spending team has a pending finance approval requests"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewTeamworkNotificationRecipient()
additionalData := map[string]interface{}{
	"teamId" : "e8bece96-d393-4b9b-b8da-69cedef1a7e7", 
	"channelId" : "19:3d61a2309f094f4a9310b20f1db37520@thread.tacv2", 
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

graphClient.Teams().ByTeamId("team-id").SendActivityNotification().Post(context.Background(), requestBody, nil)


```