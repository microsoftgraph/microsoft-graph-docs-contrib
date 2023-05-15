---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProvider
{
	OdataType = "microsoft.graph.openIdConnectProvider",
	Name = "Login with the Contoso identity provider",
	Type = "OpenIDConnect",
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	ClientSecret = "12345",
	AdditionalData = new Dictionary<string, object>
	{
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
var result = await graphClient.IdentityProviders.PostAsync(requestBody);


```