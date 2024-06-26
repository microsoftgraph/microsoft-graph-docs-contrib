---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new EducationAssignmentSettings
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"gradingCategories@delta" , new List<object>
			{
				new 
				{
					Id = "03bd9196-ce2e-41bd-902f-df9ae02de4db",
					DisplayName = "Lab Updated",
				},
				new 
				{
					OdataContext = "https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity",
					Id = "109e5d73-3ef7-42a5-88d8-7e30cdb85f06",
					Reason = "deleted",
				},
				new 
				{
					DisplayName = "New Homework",
					PercentageWeight = 50,
				},
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.PatchAsync(requestBody);


```