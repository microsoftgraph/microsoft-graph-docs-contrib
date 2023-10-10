---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceInstallState
{
	OdataType = "#microsoft.graph.deviceInstallState",
	DeviceName = "Device Name value",
	DeviceId = "Device Id value",
	LastSyncDateTime = DateTimeOffset.Parse("2017-01-01T00:02:49.3205976-08:00"),
	InstallState = InstallState.Installed,
	ErrorCode = "Error Code value",
	OsVersion = "Os Version value",
	OsDescription = "Os Description value",
	UserName = "User Name value",
};
var result = await graphClient.DeviceAppManagement.ManagedEBooks["{managedEBook-id}"].DeviceStates["{deviceInstallState-id}"].PatchAsync(requestBody);


```