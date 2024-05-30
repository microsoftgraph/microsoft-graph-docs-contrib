---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OpenIdConnectIdentityProvider
{
	OdataType = "microsoft.graph.openIdConnectIdentityProvider",
	DisplayName = "Login with the Contoso identity provider",
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```