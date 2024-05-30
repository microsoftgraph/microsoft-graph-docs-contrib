---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DeviceEnrollmentPlatformRestrictionsConfiguration
{
	OdataType = "#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration",
	DisplayName = "Display Name value",
	Description = "Description value",
	Priority = 8,
	Version = 7,
	IosRestriction = new DeviceEnrollmentPlatformRestriction
	{
		OdataType = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		PlatformBlocked = true,
		PersonalDeviceEnrollmentBlocked = true,
		OsMinimumVersion = "Os Minimum Version value",
		OsMaximumVersion = "Os Maximum Version value",
	},
	WindowsRestriction = new DeviceEnrollmentPlatformRestriction
	{
		OdataType = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		PlatformBlocked = true,
		PersonalDeviceEnrollmentBlocked = true,
		OsMinimumVersion = "Os Minimum Version value",
		OsMaximumVersion = "Os Maximum Version value",
	},
	WindowsMobileRestriction = new DeviceEnrollmentPlatformRestriction
	{
		OdataType = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		PlatformBlocked = true,
		PersonalDeviceEnrollmentBlocked = true,
		OsMinimumVersion = "Os Minimum Version value",
		OsMaximumVersion = "Os Maximum Version value",
	},
	AndroidRestriction = new DeviceEnrollmentPlatformRestriction
	{
		OdataType = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		PlatformBlocked = true,
		PersonalDeviceEnrollmentBlocked = true,
		OsMinimumVersion = "Os Minimum Version value",
		OsMaximumVersion = "Os Maximum Version value",
	},
	MacOSRestriction = new DeviceEnrollmentPlatformRestriction
	{
		OdataType = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		PlatformBlocked = true,
		PersonalDeviceEnrollmentBlocked = true,
		OsMinimumVersion = "Os Minimum Version value",
		OsMaximumVersion = "Os Maximum Version value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceEnrollmentConfigurations.PostAsync(requestBody);


```