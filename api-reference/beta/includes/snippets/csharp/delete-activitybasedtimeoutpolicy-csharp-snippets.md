---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies["activityBasedTimeoutPolicies"].{id}
	.Request()
	.DeleteAsync();

```