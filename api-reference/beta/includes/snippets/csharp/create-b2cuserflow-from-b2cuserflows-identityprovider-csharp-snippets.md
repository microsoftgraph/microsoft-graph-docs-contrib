---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2cIdentityUserFlow = new B2cIdentityUserFlow
{
	Id = "Customer",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 3f,
	IdentityProviders = new B2cIdentityUserFlowIdentityProvidersCollectionWithReferencesPage()
	{
		new IdentityProvider
		{
			Id = "Facebook-OAuth"
		}
	}
};

await graphClient.Identity.B2cUserFlows
	.Request()
	.Header("Location","https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')")
	.AddAsync(b2cIdentityUserFlow);

```