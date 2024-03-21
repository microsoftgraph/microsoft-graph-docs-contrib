---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceAppManagement.ManagedEBooks["{managedEBook-id}"].InstallSummary.PatchAsync(requestBody);


```