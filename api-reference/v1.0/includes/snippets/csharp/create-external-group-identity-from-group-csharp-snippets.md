---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ExternalConnectors.Identity
{
	Id = "1431b9c38ee647f6a",
	Type = Microsoft.Graph.Models.ExternalConnectors.IdentityType.ExternalGroup,
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members.PostAsync(requestBody);


```