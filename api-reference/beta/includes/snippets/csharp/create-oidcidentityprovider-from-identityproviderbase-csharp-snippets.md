---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new IdentityProviderBase
{
	OdataType = "#microsoft.graph.OidcIdentityProvider",
	DisplayName = "Contoso AAD B2C",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"clientId" , "00001111-aaaa-2222-bbbb-3333cccc4444"
		},
		{
			"issuer" , "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/"
		},
		{
			"wellKnownEndpoint" , "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL"
		},
		{
			"responseType" , "code"
		},
		{
			"scope" , "openid profile email offline_access"
		},
		{
			"clientAuthentication" , new OidcClientSecretAuthentication
			{
				OdataType = "#microsoft.graph.oidcClientSecretAuthentication",
				ClientSecret = "4294967296",
			}
		},
		{
			"inboundClaimMapping" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"sub", new UntypedString("sub")
				},
				{
					"name", new UntypedString("name")
				},
				{
					"given_name", new UntypedString("given_name")
				},
				{
					"family_name", new UntypedString("family_name")
				},
				{
					"email", new UntypedString("email")
				},
				{
					"email_verified", new UntypedString("email_verified")
				},
				{
					"phone_number", new UntypedString("phone_number")
				},
				{
					"phone_number_verified", new UntypedString("phone_number_verified")
				},
				{
					"address", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"street_address", new UntypedString("street_address")
						},
						{
							"locality", new UntypedString("locality")
						},
						{
							"region", new UntypedString("region")
						},
						{
							"postal_code", new UntypedString("postal_code")
						},
						{
							"country", new UntypedString("country")
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```