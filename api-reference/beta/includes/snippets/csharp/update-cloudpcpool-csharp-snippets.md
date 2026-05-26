---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcAgentPool
{
	OdataType = "#microsoft.graph.cloudPcAgentPool",
	DisplayName = "Contoso Development Pool Updated",
	Description = "Contoso Development Pool Description Updated",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.CloudPcPools["{cloudPcPool-id}"].PatchAsync(requestBody);


```