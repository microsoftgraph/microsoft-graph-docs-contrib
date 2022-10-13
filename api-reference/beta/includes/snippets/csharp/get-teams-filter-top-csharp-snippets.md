---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teams = await graphClient.Teams
	.Request()
	.Filter("startswith(displayName, 'A')")
	.Top(2)
	.GetAsync();

```