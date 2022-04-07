---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var signIns = await graphClient.AuditLogs.SignIns
	.Request()
	.Filter("(signInEventTypes/any(t: t ne 'interactiveUser'))")
	.OrderBy("createdDateTime DESC")
	.Top(10)
	.GetAsync();

```