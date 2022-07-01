---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

driveId := "drive-id"
driveItemId := "driveItem-id"
driveItemVersionId := "driveItemVersion-id"
graphClient.DrivesById(&driveId).ItemsById(&driveItemId).VersionsById(&driveItemVersionId).RestoreVersion(drive-id, driveItem-id, driveItemVersion-id).Post()


```