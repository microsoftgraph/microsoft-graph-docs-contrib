---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var signIns = await graphClient.AuditLogs.SignIns
	.Request()
	.Filter("startsWith(appDisplayName,'Graph')")
	.Top(10)
	.GetAsync();

```