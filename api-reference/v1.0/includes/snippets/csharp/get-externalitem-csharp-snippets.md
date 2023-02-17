---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalItem = await graphClient.External.Connections["{externalConnectors.externalConnection-id}"].Items["{externalConnectors.externalItem-id}"]
	.Request()
	.GetAsync();

```