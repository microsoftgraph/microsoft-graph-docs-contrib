---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationAssignmentSettings
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"gradingCategories@delta" , new List<object>
			{
				new 
				{
					Id = "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
					DisplayName = "Lab Test",
				},
				new 
				{
					OdataContext = "https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity",
					Id = "e2a86277-24f9-4f29-8196-8c83fc69d00d",
					Reason = "deleted",
				},
				new 
				{
					DisplayName = "Lab Practice",
					PercentageWeight = 30,
				},
				new 
				{
					DisplayName = "Lab Theory",
					PercentageWeight = 10,
				},
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.PatchAsync(requestBody);


```