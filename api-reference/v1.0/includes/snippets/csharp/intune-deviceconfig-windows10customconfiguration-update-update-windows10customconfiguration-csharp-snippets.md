---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Windows10CustomConfiguration
{
	OdataType = "#microsoft.graph.windows10CustomConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	OmaSettings = new List<OmaSetting>
	{
		new OmaSetting
		{
			OdataType = "microsoft.graph.omaSetting",
			DisplayName = "Display Name value",
			Description = "Description value",
			OmaUri = "Oma Uri value",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```