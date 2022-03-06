---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

managedDeviceId := "managedDevice-id"
result, err := graphClient.DeviceManagement().ManagedDevicesById(&managedDeviceId).GetCloudPcRemoteActionResults()().Get(nil)


```