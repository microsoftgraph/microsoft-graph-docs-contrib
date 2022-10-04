---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedOperationEvents = await graphClient.PrivilegedOperationEvents
	.Request()
	.Filter("requestType eq 'Deactivate'")
	.GetAsync();

```