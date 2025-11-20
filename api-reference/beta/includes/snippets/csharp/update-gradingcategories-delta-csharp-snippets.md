---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new EducationAssignmentSettings
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"gradingCategories@delta" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("fb859cd3-943b-4cd6-9bbe-fe1c39eace0e")
					},
					{
						"displayName", new UntypedString("Lab Test")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@odata.context", new UntypedString("https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity")
					},
					{
						"id", new UntypedString("e2a86277-24f9-4f29-8196-8c83fc69d00d")
					},
					{
						"reason", new UntypedString("deleted")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"displayName", new UntypedString("Lab Practice")
					},
					{
						"percentageWeight", new UntypedString("30")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"displayName", new UntypedString("Lab Theory")
					},
					{
						"percentageWeight", new UntypedString("10")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.PatchAsync(requestBody);


```