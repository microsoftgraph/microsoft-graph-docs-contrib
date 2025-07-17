---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteamwork "github.com/microsoftgraph/msgraph-beta-sdk-go/teamwork"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphteamwork.NewSendActivityNotificationToRecipientsPostRequestBody()
topic := graphmodels.NewTeamworkActivityTopic()
source := graphmodels.TEXT_TEAMWORKACTIVITYTOPICSOURCE 
topic.SetSource(&source) 
value := "Deployment Approvals Channel"
topic.SetValue(&value) 
webUrl := "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
topic.SetWebUrl(&webUrl) 
requestBody.SetTopic(topic)
activityType := "announcementPosted"
requestBody.SetActivityType(&activityType) 
previewText := graphmodels.NewItemBody()
content := "new announcemnet posted"
previewText.SetContent(&content) 
requestBody.SetPreviewText(previewText)
iconId := "announcementCreated"
requestBody.SetIconId(&iconId) 


keyValuePair := graphmodels.NewKeyValuePair()
name := "deploymentId"
keyValuePair.SetName(&name) 
value := "6788662"
keyValuePair.SetValue(&value) 

templateParameters := []graphmodels.KeyValuePairable {
	keyValuePair,
}
requestBody.SetTemplateParameters(templateParameters)


teamworkNotificationRecipient := graphmodels.NewAadUserNotificationRecipient()
userId := "569363e2-4e49-4661-87f2-16f245c5d66a"
teamworkNotificationRecipient.SetUserId(&userId) 
teamworkNotificationRecipient1 := graphmodels.NewAadUserNotificationRecipient()
userId := "ab88234e-0874-477c-9638-d144296ed04f"
teamworkNotificationRecipient1.SetUserId(&userId) 
teamworkNotificationRecipient2 := graphmodels.NewAadUserNotificationRecipient()
userId := "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
teamworkNotificationRecipient2.SetUserId(&userId) 

recipients := []graphmodels.TeamworkNotificationRecipientable {
	teamworkNotificationRecipient,
	teamworkNotificationRecipient1,
	teamworkNotificationRecipient2,
}
requestBody.SetRecipients(recipients)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Teamwork().SendActivityNotificationToRecipients().Post(context.Background(), requestBody, nil)


```