---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managedDeviceIds = new List<String>()
{
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
};

var restorePointDateTime = DateTimeOffset.Parse("2021-09-23T04:00:00");

var timeRange = RestoreTimeRange.Before;

await graphClient.DeviceManagement.ManagedDevices
	.BulkRestoreCloudPc(managedDeviceIds,restorePointDateTime,timeRange)
	.Request()
	.PostAsync();

```