---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceCompliancePolicyDeviceStateSummary
{
	OdataType = "#microsoft.graph.deviceCompliancePolicyDeviceStateSummary",
	InGracePeriodCount = 2,
	ConfigManagerCount = 2,
	UnknownDeviceCount = 2,
	NotApplicableDeviceCount = 8,
	CompliantDeviceCount = 4,
	RemediatedDeviceCount = 5,
	NonCompliantDeviceCount = 7,
	ErrorDeviceCount = 0,
	ConflictDeviceCount = 3,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicyDeviceStateSummary.PatchAsync(requestBody);


```