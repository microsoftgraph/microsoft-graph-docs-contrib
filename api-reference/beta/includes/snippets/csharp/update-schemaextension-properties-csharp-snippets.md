---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new User
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"ext55gb1l09_msLearnCourses" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"courseType", new UntypedString("Admin")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```