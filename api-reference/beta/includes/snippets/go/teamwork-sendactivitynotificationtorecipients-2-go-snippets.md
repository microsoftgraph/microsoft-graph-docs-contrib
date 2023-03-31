---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Teamwork/SendActivityNotificationToRecipients"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSendActivityNotificationToRecipientsPostRequestBody()
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


teamworkNotificationRecipient := graphmodels.NewTeamworkNotificationRecipient()
additionalData := map[string]interface{}{
	"userId" : "569363e2-4e49-4661-87f2-16f245c5d66a", 
}
teamworkNotificationRecipient.SetAdditionalData(additionalData)
teamworkNotificationRecipient1 := graphmodels.NewTeamworkNotificationRecipient()
additionalData := map[string]interface{}{
	"userId" : "ab88234e-0874-477c-9638-d144296ed04f", 
}
teamworkNotificationRecipient1.SetAdditionalData(additionalData)
teamworkNotificationRecipient2 := graphmodels.NewTeamworkNotificationRecipient()
additionalData := map[string]interface{}{
	"userId" : "01c64f53-69aa-42c7-9b7f-9f75195d6bfc", 
}
teamworkNotificationRecipient2.SetAdditionalData(additionalData)

recipients := []graphmodels.TeamworkNotificationRecipientable {
	teamworkNotificationRecipient,
	teamworkNotificationRecipient1,
	teamworkNotificationRecipient2,

}
requestBody.SetRecipients(recipients)

graphClient.Teamwork().SendActivityNotificationToRecipients().Post(context.Background(), requestBody, nil)


```