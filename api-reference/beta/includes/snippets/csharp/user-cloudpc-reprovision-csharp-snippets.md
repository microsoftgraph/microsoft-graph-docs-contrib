---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.CloudPCs["{cloudPC-id}"]
	.Reprovision(null,null)
	.Request()
	.PostAsync();

```