---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var security = await graphClient.Security
	.Request()
	.GetAsync();

```