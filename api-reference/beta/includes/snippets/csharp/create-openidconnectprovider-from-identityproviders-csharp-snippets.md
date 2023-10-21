---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OpenIdConnectProvider
{
	OdataType = "microsoft.graph.openIdConnectProvider",
	Name = "Login with the Contoso identity provider",
	Type = "OpenIDConnect",
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	ClientSecret = "12345",
	ClaimsMapping = new ClaimsMapping
	{
		UserId = "myUserId",
		GivenName = "myGivenName",
		Surname = "mySurname",
		Email = "myEmail",
		DisplayName = "myDisplayName",
	},
	DomainHint = "mycustomoidc",
	MetadataUrl = "https://mycustomoidc.com/.well-known/openid-configuration",
	ResponseMode = OpenIdConnectResponseMode.Form_post,
	ResponseType = OpenIdConnectResponseTypes.Code,
	Scope = "openid",
};
var result = await graphClient.IdentityProviders.PostAsync(requestBody);


```