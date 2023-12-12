---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CustomSecurityAttributeDefinition
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"allowedValues@delta" , new List<object>
			{
				new 
				{
					Id = "Baker",
					IsActive = false,
				},
				new 
				{
					Id = "Skagit",
					IsActive = true,
				},
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions["{customSecurityAttributeDefinition-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("OData-Version", "4.01");
});


```