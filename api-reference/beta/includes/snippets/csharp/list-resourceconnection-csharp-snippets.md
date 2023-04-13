---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var resourceConnections = await graphClient.Admin.Windows.Updates.ResourceConnections
	.Request()
	.GetAsync();

```