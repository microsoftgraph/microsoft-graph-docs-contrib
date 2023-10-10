---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceCompliancePolicySettingStateSummary
{
	OdataType = "#microsoft.graph.deviceCompliancePolicySettingStateSummary",
	Setting = "Setting value",
	SettingName = "Setting Name value",
	PlatformType = PolicyPlatformType.IOS,
	UnknownDeviceCount = 2,
	NotApplicableDeviceCount = 8,
	CompliantDeviceCount = 4,
	RemediatedDeviceCount = 5,
	NonCompliantDeviceCount = 7,
	ErrorDeviceCount = 0,
	ConflictDeviceCount = 3,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicySettingStateSummaries.PostAsync(requestBody);


```