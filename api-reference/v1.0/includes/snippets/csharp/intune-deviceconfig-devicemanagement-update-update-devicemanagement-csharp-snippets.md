---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceManagement
{
	OdataType = "#microsoft.graph.deviceManagement",
	Settings = new DeviceManagementSettings
	{
		OdataType = "microsoft.graph.deviceManagementSettings",
		DeviceComplianceCheckinThresholdDays = 4,
		IsScheduledActionEnabled = true,
		SecureByDefault = true,
	},
	IntuneAccountId = Guid.Parse("cf1549a1-49a1-cf15-a149-15cfa14915cf"),
};
var result = await graphClient.DeviceManagement.PatchAsync(requestBody);


```