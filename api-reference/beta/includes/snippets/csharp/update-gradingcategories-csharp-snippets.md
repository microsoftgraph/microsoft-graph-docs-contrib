---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationAssignmentSettings
{
	GradingCategories = new List<EducationGradingCategory>
	{
		new EducationGradingCategory
		{
			DisplayName = "Lab",
			PercentageWeight = 10,
		},
		new EducationGradingCategory
		{
			DisplayName = "Homework",
			PercentageWeight = 80,
		},
		new EducationGradingCategory
		{
			DisplayName = "Test",
			PercentageWeight = 10,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.PatchAsync(requestBody);


```