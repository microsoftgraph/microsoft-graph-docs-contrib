---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetManagedDeviceIds( []String {
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
}
restorePointDateTime, err := time.Parse(time.RFC3339, "2021-09-23T04:00:00.0000000")
requestBody.SetRestorePointDateTime(&restorePointDateTime)
timeRange := "before"
requestBody.SetTimeRange(&timeRange)
result, err := graphClient.DeviceManagement().ManagedDevices().BulkRestoreCloudPc().Post(requestBody)


```