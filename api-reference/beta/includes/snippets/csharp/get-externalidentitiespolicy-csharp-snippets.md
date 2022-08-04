---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalIdentitiesPolicy = await graphClient.Policies.ExternalIdentitiesPolicy
	.Request()
	.GetAsync();

```