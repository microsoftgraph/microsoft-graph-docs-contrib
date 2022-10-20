---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectionQuota = await graphClient.External.Connections["{externalConnectors.externalConnection-id}"].Quota
	.Request()
	.GetAsync();

```