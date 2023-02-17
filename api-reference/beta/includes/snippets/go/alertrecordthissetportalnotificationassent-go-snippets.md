---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.DeviceManagement().Monitoring().AlertRecordsById("alertRecord-id").SetPortalNotificationAsSent().Post(context.Background(), nil)


```