---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionEvents = await graphClient.Security.Triggers.RetentionEvents
	.Request()
	.GetAsync();

```