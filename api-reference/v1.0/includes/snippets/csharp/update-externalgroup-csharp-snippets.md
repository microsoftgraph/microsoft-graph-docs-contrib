---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalGroup = new Microsoft.Graph.ExternalConnectors.ExternalGroup
{
	DisplayName = "Contoso Marketing",
	Description = "The product marketing team"
};

await graphClient.Connections["{externalConnectors.externalConnection-id}"].Groups["{externalConnectors.externalGroup-id}"]
	.Request()
	.UpdateAsync(externalGroup);

```