---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipalIds = new List<String>()
{
	"9089a539-a539-9089-39a5-899039a58990"
};

await graphClient.IdentityProtection.RiskyServicePrincipals
	.ConfirmCompromised(servicePrincipalIds)
	.Request()
	.PostAsync();

```