---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcCloudApp
{
	DisplayName = "Remote Desktop Connection",
	DiscoveredAppName = "Remote Desktop Connection",
	ProvisioningPolicyId = "e31f75e9-25a8-41e9-a9d5-ce8fd484af15",
	Description = "",
	AppDetail = new CloudPcFilePathAppDetail
	{
		OdataType = "#microsoft.graph.cloudPcFilePathAppDetail",
		FilePath = "C:\Windows\system32\mstsc.exe",
		CommandLineArguments = "",
		IconPath = "C:\Windows\system32\mstsc.exe",
		IconIndex = 0,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.CloudApps.PostAsync(requestBody);


```