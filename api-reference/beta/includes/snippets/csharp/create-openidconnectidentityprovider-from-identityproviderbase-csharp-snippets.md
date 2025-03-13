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
	DisplayName = "Contoso",
	ClientId = "00001111-aaaa-2222-bbbb-3333cccc4444",
	ClientSecret = "4294967296",
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