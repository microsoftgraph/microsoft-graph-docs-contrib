---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var incidents = await graphClient.Security.Incidents
	.Request()
	.Expand("alerts")
	.GetAsync();

```