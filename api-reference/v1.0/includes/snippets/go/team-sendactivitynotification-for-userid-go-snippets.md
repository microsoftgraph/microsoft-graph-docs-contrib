---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Users/Item/Teamwork/SendActivityNotification"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSendActivityNotificationPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.TEXT_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "Deployment Approvals Channel"
topic.SetValue(&value) 
webUrl := "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
topic.SetWebUrl(&webUrl) 
requestBody.SetTopic(topic)
activityType := "deploymentApprovalRequired"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "New deployment requires your approval"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)


keyValuePair := graphmodels.NewKeyValuePair()
name := "deploymentId"
keyValuePair.SetName(&name) 
value := "6788662"
keyValuePair.SetValue(&value) 

templateParameters := []graphmodels.KeyValuePairable {
	keyValuePair,

}
requestBody.SetTemplateParameters(templateParameters)

graphClient.Users().ByUserId("user-id").Teamwork().SendActivityNotification().Post(context.Background(), requestBody, nil)


```