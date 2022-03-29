---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCloudPcSnapshotIdRequestBody()
cloudPcSnapshotId := "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8"
requestBody.SetCloudPcSnapshotId(&cloudPcSnapshotId)
options := &msgraphsdk.RestoreCloudPcRequestBuilderPostOptions{
	Body: requestBody,
}
managedDeviceId := "managedDevice-id"
graphClient.DeviceManagement().ManagedDevicesById(&managedDeviceId).RestoreCloudPc(managedDevice-id).Post(options)


```