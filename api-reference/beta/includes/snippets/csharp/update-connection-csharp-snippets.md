---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalConnection
{
	Name = "Contoso HR Service Tickets",
	Description = "Connection to index HR service tickets",
};
var result = await graphClient.External.Connections["{externalConnection-id}"].PatchAsync(requestBody);


```