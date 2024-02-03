---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new FederatedIdentityCredential
{
	Name = "testing02",
	Issuer = "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
	Subject = "a7d388c3-5e3f-4959-ac7d-786b3383006a",
	Description = "Updated description",
	Audiences = new List<string>
	{
		"api://AzureADTokenExchange",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Applications["{application-id}"].FederatedIdentityCredentials["{federatedIdentityCredential-id}"].PatchAsync(requestBody);


```