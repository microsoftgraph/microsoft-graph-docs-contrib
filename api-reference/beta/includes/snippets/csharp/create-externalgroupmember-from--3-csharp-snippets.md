---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ExternalConnectors.Identity
{
	Id = "1431b9c38ee647f6a",
	Type = Microsoft.Graph.Beta.Models.ExternalConnectors.IdentityType.ExternalGroup,
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members.PostAsync(requestBody);


```