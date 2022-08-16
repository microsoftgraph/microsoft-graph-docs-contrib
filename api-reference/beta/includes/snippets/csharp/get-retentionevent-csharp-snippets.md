---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionEvent = await graphClient.Security.Triggers.RetentionEvents["{security.retentionEvent-id}"]
	.Request()
	.GetAsync();

```