---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var resourceConnection = await graphClient.Admin.Windows.Updates.ResourceConnections["{windowsUpdates.resourceConnection-id}"]
	.Request()
	.GetAsync();

```