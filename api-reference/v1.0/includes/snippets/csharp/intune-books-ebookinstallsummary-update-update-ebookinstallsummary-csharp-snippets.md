---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EBookInstallSummary
{
	OdataType = "#microsoft.graph.eBookInstallSummary",
	InstalledDeviceCount = 4,
	FailedDeviceCount = 1,
	NotInstalledDeviceCount = 7,
	InstalledUserCount = 2,
	FailedUserCount = 15,
	NotInstalledUserCount = 5,
};
var result = await graphClient.DeviceAppManagement.ManagedEBooks["{managedEBook-id}"].InstallSummary.PatchAsync(requestBody);


```