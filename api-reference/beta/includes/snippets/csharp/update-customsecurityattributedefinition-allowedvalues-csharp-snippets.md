---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new CustomSecurityAttributeDefinition
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"allowedValues@delta" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("Baker")
					},
					{
						"isActive", new UntypedBoolean(false)
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("Skagit")
					},
					{
						"isActive", new UntypedBoolean(true)
					},
				}),
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