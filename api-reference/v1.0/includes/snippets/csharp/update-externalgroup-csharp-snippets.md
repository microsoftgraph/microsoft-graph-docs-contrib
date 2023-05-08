---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ExternalConnectors.ExternalGroup
{
	DisplayName = "Contoso Marketing",
	Description = "The product marketing team",
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].PatchAsync(requestBody);


```