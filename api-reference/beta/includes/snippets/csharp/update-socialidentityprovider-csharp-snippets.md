---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviderBase = new SocialIdentityProvider
{
	ClientSecret = "1111111111111"
};

await graphClient.Identity.IdentityProviders["{identityProviderBase-id}"]
	.Request()
	.UpdateAsync(identityProviderBase);

```