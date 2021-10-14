---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contacts = await graphClient.Contacts
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Filter("startswith(displayName,'A')")
	.OrderBy("displayName")
	.Top(1)
	.GetAsync();

```