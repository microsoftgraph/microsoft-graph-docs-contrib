---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPC = await graphClient.Me.CloudPCs["{cloudPC-id}"]
	.Request()
	.GetAsync();

```