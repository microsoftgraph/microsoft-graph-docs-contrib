---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new B2cIdentityUserFlow
{
	Id = "Customer",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 3f,
	IdentityProviders = new List<IdentityProvider>
	{
		new IdentityProvider
		{
			Id = "Facebook-OAuth",
		},
	},
};
var result = await graphClient.Identity.B2cUserFlows.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Location", "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')");
});


```