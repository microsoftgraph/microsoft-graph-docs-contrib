---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connections = await graphClient.Connections
	.Request()
	.GetAsync();

```