---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphchats.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.ENTITYURL_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "https://graph.microsoft.com/v1.0/chats/{chatId}/messages/{messageId}"
topic.SetValue(&value) 
requestBody.SetTopic(topic)
activityType := "approvalRequired"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "Deployment requires your approval"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
recipient := graphmodels.NewTeamworkNotificationRecipient()
additionalData := map[string]interface{}{
	"userId" : "jacob@contoso.com", 
}
recipient.SetAdditionalData(additionalData)
requestBody.SetRecipient(recipient)


keyValuePair := graphmodels.NewKeyValuePair()
name := "approvalTaskId"
keyValuePair.SetName(&name) 
value := "2020AAGGTAPP"
keyValuePair.SetValue(&value) 

templateParameters := []graphchats.KeyValuePairable {
	keyValuePair,

}
requestBody.SetTemplateParameters(templateParameters)

graphClient.Chats().ByChatId("chat-id").SendActivityNotification().Post(context.Background(), requestBody, nil)


```