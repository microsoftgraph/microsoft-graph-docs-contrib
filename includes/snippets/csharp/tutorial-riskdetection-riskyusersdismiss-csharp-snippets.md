---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userIds = new List<String>()
{
	"4628e7df-dff3-407c-a08f-75f08c0806dc"
};

await graphClient.IdentityProtection.RiskyUsers
	.Dismiss(userIds)
	.Request()
	.PostAsync();

```