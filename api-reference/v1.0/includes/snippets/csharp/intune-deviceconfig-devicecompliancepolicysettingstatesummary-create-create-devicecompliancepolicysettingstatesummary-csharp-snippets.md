---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceCompliancePolicySettingStateSummaries.PostAsync(requestBody);


```