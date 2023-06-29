---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AndroidManagedAppRegistration
{
	OdataType = "#microsoft.graph.androidManagedAppRegistration",
	LastSyncDateTime = DateTimeOffset.Parse("2017-01-01T00:02:49.3205976-08:00"),
	ApplicationVersion = "Application Version value",
	ManagementSdkVersion = "Management Sdk Version value",
	PlatformVersion = "Platform Version value",
	DeviceType = "Device Type value",
	DeviceTag = "Device Tag value",
	DeviceName = "Device Name value",
	FlaggedReasons = new List<ManagedAppFlaggedReason?>
	{
		ManagedAppFlaggedReason.RootedDevice,
	},
	UserId = "User Id value",
	AppIdentifier = new AndroidMobileAppIdentifier
	{
		OdataType = "microsoft.graph.androidMobileAppIdentifier",
		PackageId = "Package Id value",
	},
	Version = "Version value",
};
var result = await graphClient.DeviceAppManagement.ManagedAppRegistrations.PostAsync(requestBody);


```