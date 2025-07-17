---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Domains.Item.Verify;

var requestBody = new VerifyPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"forceTakeover" , true
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Domains["{domain-id}"].Verify.PostAsync(requestBody);


```