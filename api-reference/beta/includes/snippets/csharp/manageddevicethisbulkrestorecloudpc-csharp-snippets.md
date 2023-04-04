---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.ManagedDevices.BulkRestoreCloudPc.BulkRestoreCloudPcPostRequestBody
{
	ManagedDeviceIds = new List<string>
	{
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	},
	RestorePointDateTime = DateTimeOffset.Parse("2021-09-23T04:00:00.0000000"),
	TimeRange = RestoreTimeRange.Before,
};
var result = await graphClient.DeviceManagement.ManagedDevices.BulkRestoreCloudPc.PostAsync(requestBody);


```