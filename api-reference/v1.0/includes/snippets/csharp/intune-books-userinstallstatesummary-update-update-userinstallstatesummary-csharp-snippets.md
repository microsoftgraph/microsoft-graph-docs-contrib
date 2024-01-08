---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new UserInstallStateSummary
{
	OdataType = "#microsoft.graph.userInstallStateSummary",
	UserName = "User Name value",
	InstalledDeviceCount = 4,
	FailedDeviceCount = 1,
	NotInstalledDeviceCount = 7,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceAppManagement.ManagedEBooks["{managedEBook-id}"].UserStateSummary["{userInstallStateSummary-id}"].PatchAsync(requestBody);


```