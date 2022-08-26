---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.DrivesById("drive-id").ItemsById("driveItem-id").VersionsById("driveItemVersion-id").RestoreVersion().Post()


```