---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProviderBase
{
	OdataType = "microsoft.graph.openIdConnectIdentityProvider",
	DisplayName = "Login with the Contoso identity provider",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"clientId" , "56433757-cadd-4135-8431-2c9e3fd68ae8"
		},
		{
			"clientSecret" , "12345"
		},
		{
			"claimsMapping" , new 
			{
				UserId = "myUserId",
				GivenName = "myGivenName",
				Surname = "mySurname",
				Email = "myEmail",
				DisplayName = "myDisplayName",
			}
		},
		{
			"domainHint" , "mycustomoidc"
		},
		{
			"metadataUrl" , "https://mycustomoidc.com/.well-known/openid-configuration"
		},
		{
			"responseMode" , "form_post"
		},
		{
			"responseType" , "code"
		},
		{
			"scope" , "openid"
		},
	},
};
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```