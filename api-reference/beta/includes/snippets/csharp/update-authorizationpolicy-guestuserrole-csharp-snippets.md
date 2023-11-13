---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AuthorizationPolicy
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"guestUserRole" , "2af84b1e-32c8-42b7-82bc-daa82404023b"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthorizationPolicy["{authorizationPolicy-id}"].PatchAsync(requestBody);


```