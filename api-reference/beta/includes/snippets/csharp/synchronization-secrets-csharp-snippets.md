---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secrets = new SynchronizationSecretKeyStringValuePair
{
	Value = new List<String>()
	{
		"",
		"",
		"",
		""
	}
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization
	.Request()
	.PutAsync(secrets);

```