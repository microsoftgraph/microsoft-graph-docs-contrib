---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.DeviceManagement().Monitoring().AlertRecordsById("alertRecord-id").DeviceManagementSetPortalNotificationAsSent().Post(context.Background(), nil)


```