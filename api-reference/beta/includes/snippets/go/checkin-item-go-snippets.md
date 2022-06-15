---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
comment := "Updating the latest guidelines"
requestBody.SetComment(&comment)
driveId := "drive-id"
driveItemId := "driveItem-id"
graphClient.DrivesById(&driveId).ItemsById(&driveItemId).Checkin(drive-id, driveItem-id).Post(requestBody)


```