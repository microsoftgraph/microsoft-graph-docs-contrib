---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new CloudPcUserSetting
{
	OdataType = "#microsoft.graph.cloudPcUserSetting",
	DisplayName = "Example",
	RestorePointSetting = new CloudPcRestorePointSetting
	{
		FrequencyType = CloudPcRestorePointFrequencyType.SixteenHours,
		UserRestoreEnabled = true,
	},
	LocalAdminEnabled = false,
	ResetEnabled = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.UserSettings["{cloudPcUserSetting-id}"].PatchAsync(requestBody);


```