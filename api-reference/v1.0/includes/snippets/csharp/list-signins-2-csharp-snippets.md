---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("top", "10")
};

var signIns = await graphClient.AuditLogs.SignIns
	.Request( queryOptions )
	.Filter("startsWith(appDisplayName,'Graph')")
	.GetAsync();

```