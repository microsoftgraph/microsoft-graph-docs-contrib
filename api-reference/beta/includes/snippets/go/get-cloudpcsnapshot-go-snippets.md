---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

cloudPcSnapshotId := "cloudPcSnapshot-id"
result, err := graphClient.DeviceManagement().VirtualEndpoint().SnapshotsById(&cloudPcSnapshotId).Get(nil)


```