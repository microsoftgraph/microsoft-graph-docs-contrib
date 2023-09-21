---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewLocalizedNotificationMessage()
locale := "Locale value"
requestBody.SetLocale(&locale) 
subject := "Subject value"
requestBody.SetSubject(&subject) 
messageTemplate := "Message Template value"
requestBody.SetMessageTemplate(&messageTemplate) 
isDefault := true
requestBody.SetIsDefault(&isDefault) 

localizedNotificationMessages, err := graphClient.DeviceManagement().NotificationMessageTemplates().ByNotificationMessageTemplateId("notificationMessageTemplate-id").LocalizedNotificationMessages().Post(context.Background(), requestBody, nil)


```