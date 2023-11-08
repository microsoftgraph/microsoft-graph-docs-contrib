---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcOrganizationSettings
{
	OdataType = "#microsoft.graph.cloudPcOrganizationSettings",
	EnableMEMAutoEnroll = true,
	OsVersion = CloudPcOperatingSystem.Windows11,
	UserAccountType = CloudPcUserAccountType.StandardUser,
	WindowsSettings = new CloudPcWindowsSettings
	{
		Language = "en-US",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.OrganizationSettings.PatchAsync(requestBody);


```