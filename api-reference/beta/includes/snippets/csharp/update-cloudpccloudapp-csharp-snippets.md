---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcCloudApp
{
	OdataType = "#microsoft.graph.cloudPcCloudApp",
	DisplayName = "Cloud App example3",
	AppDetail = new CloudPcCloudAppDetail
	{
		IconPath = "C:\Windows\system32\WindowsPowerShell\v1.0\powershell_ise.exe",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.CloudApps["{cloudPcCloudApp-id}"].PatchAsync(requestBody);


```