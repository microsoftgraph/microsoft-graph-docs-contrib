---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalIdentitiesPolicy = new ExternalIdentitiesPolicy
{
	AllowExternalIdentitiesToLeave = false
};

await graphClient.Policies.ExternalIdentitiesPolicy
	.Request()
	.UpdateAsync(externalIdentitiesPolicy);

```