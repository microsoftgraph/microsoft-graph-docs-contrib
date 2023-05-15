---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalGroup
{
	Id = "31bea3d537902000",
	DisplayName = "Contoso Marketing",
	Description = "The product marketing team",
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Groups.PostAsync(requestBody);


```