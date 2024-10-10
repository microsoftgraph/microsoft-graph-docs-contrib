---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OidcIdentityProvider
{
	OdataType = "microsoft.graph.OidcIdentityProvider",
	DisplayName = "Sign in with B2C contoso tenant",
    ClientId = "client_id",
    Issuer: "https://contos.b2clogin.com/b07624bf-a5cd-47be-97e4-42702c46c74e/v2.0/",
    WellKnownEndpoint: "https://contos.b2clogin.com/contos.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL",
    ResponseType: "code",
    Scope: "openid profile email offline_access",
	ClientAuthentication = new ClientAuthentication
	{
		OdataType = "#microsoft.graph.OIDCClientSecretAuthentication",
		ClientSecret = "client_secret"
	},
	ClaimsMapping = new ClaimsMapping
	{
		UserId = "myUserId",
		GivenName = "myGivenName",
		Surname = "mySurname",
		Email = "myEmail",
		DisplayName = "myDisplayName",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```