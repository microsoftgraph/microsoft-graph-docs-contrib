---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ExternalConnectors.Identity
{
	Id = "e5477431-1038-484e-bf69-1dfedb97a110",
	Type = Microsoft.Graph.Models.ExternalConnectors.IdentityType.Group,
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members.PostAsync(requestBody);


```