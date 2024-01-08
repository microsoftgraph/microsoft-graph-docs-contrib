---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SocialIdentityProvider
{
	OdataType = "#microsoft.graph.socialIdentityProvider",
	ClientSecret = "1111111111111",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.IdentityProviders["{identityProviderBase-id}"].PatchAsync(requestBody);


```