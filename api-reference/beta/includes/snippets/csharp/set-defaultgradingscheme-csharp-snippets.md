---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationGradingScheme
{
	DisplayName = "New name 02",
	Grades = new List<EducationGradingSchemeGrade>
	{
		new EducationGradingSchemeGrade
		{
			DisplayName = "Only grade",
			MinPercentage = 0f,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.GradingSchemes.PostAsync(requestBody);


```