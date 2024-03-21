---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new FieldValueSet
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"Color" , "Fuchsia"
		},
		{
			"Quantity" , 934
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].Fields.PatchAsync(requestBody);


```