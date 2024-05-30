---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.ManagedDevices.BulkRestoreCloudPc;
using Microsoft.Graph.Beta.Models;

var requestBody = new BulkRestoreCloudPcPostRequestBody
{
	ManagedDeviceIds = new List<string>
	{
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	},
	RestorePointDateTime = DateTimeOffset.Parse("2021-09-23T04:00:00.0000000"),
	TimeRange = RestoreTimeRange.Before,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.ManagedDevices.BulkRestoreCloudPc.PostAsync(requestBody);


```