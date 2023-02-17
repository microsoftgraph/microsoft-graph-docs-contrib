---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conditionalAccessTemplate = await graphClient.Identity.ConditionalAccess.Templates["{conditionalAccessTemplate-id}"]
	.Request()
	.GetAsync();

```