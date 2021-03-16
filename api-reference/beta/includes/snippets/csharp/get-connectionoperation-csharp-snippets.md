---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectionOperation = await graphClient.Connections["{externalConnection-id}"].Operations["{connectionOperation-id}"]
	.Request()
	.GetAsync();

```