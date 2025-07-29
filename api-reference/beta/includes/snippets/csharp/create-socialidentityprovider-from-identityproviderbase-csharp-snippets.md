---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SocialIdentityProvider
{
	OdataType = "microsoft.graph.socialIdentityProvider",
	DisplayName = "Login with Amazon",
	IdentityProviderType = "Amazon",
	ClientId = "00001111-aaaa-2222-bbbb-3333cccc4444",
	ClientSecret = "42*****96",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```