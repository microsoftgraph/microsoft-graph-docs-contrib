---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var planner = await graphClient.Planner
	.Request()
	.GetAsync();

```