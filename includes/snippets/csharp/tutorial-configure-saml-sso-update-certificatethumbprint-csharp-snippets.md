---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = new ServicePrincipal
{
	PreferredTokenSigningKeyThumbprint = "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10"
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.Request()
	.UpdateAsync(servicePrincipal);

```