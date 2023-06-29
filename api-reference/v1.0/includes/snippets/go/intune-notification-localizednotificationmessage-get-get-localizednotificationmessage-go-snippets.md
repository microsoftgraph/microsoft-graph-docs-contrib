---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.DeviceManagement().NotificationMessageTemplates().ByNotificationMessageTemplateId("notificationMessageTemplate-id").LocalizedNotificationMessages().ByLocalizedNotificationMessageId("localizedNotificationMessage-id").Get(context.Background(), nil)


```