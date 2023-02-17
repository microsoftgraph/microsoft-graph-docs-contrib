---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPCs = await graphClient.Me.CloudPCs
	.Request()
	.GetAsync();

```