---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviderBase = new AppleManagedIdentityProvider
{
	DisplayName = "Sign in with Apple",
	DeveloperId = "UBF8T346G9",
	ServiceId = "com.microsoft.rts.b2c.test.client",
	KeyId = "99P6D879C4",
	CertificateData = "******"
};

await graphClient.Identity.IdentityProviders
	.Request()
	.AddAsync(identityProviderBase);

```