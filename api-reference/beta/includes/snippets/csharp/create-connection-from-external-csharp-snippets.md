---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalConnection
{
	Id = "contosohr",
	Name = "Contoso HR",
	Description = "Connection to index Contoso HR system",
};
var result = await graphClient.External.Connections.PostAsync(requestBody);


```