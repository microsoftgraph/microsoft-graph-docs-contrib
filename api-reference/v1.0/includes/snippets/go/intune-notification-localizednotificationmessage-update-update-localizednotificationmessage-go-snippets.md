---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewLocalizedNotificationMessage()
locale := "Locale value"
requestBody.SetLocale(&locale) 
subject := "Subject value"
requestBody.SetSubject(&subject) 
messageTemplate := "Message Template value"
requestBody.SetMessageTemplate(&messageTemplate) 
isDefault := true
requestBody.SetIsDefault(&isDefault) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
localizedNotificationMessages, err := graphClient.DeviceManagement().NotificationMessageTemplates().ByNotificationMessageTemplateId("notificationMessageTemplate-id").LocalizedNotificationMessages().ByLocalizedNotificationMessageId("localizedNotificationMessage-id").Patch(context.Background(), requestBody, nil)


```