---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionEventType = await graphClient.Security.TriggerTypes.RetentionEventTypes["{security.retentionEventType-id}"]
	.Request()
	.GetAsync();

```