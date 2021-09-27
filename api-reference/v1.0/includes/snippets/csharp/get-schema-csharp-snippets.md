---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schema = await graphClient.Connections["{externalConnectors.externalConnection-id}"].Schema
	.Request()
	.GetAsync();

```