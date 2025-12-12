---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.CloudApps.Reset;

var requestBody = new ResetPostRequestBody
{
	CloudAppIds = new List<string>
	{
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"40d0e128-de93-41dc-89ec-33d84bb662a0",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.CloudApps.Reset.PostAsync(requestBody);


```