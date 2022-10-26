---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionEventTypes = await graphClient.Security.TriggerTypes.RetentionEventTypes
	.Request()
	.GetAsync();

```