---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Extensions["{extension-id}"]
	.Request()
	.DeleteAsync();

```