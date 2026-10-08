---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcAgentPoolUserAssignment
{
	OdataType = "#microsoft.graph.cloudPcAgentPoolUserAssignment",
	UserPrincipalId = "f6a7b8c9-d0e1-2345-f678-901234567890",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.CloudPcPools["{cloudPcPool-id}"].Assignments.PostAsync(requestBody);


```