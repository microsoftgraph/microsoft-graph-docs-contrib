---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

driveId := "drive-id"
driveItemId := "driveItem-id"
graphClient.DrivesById(&driveId).ItemsById(&driveItemId).Checkout(drive-id, driveItem-id).Post()


```