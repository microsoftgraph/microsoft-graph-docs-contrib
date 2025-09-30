---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationGradingScheme
{
	DisplayName = "PassFailScheme",
	Grades = new List<EducationGradingSchemeGrade>
	{
		new EducationGradingSchemeGrade
		{
			DisplayName = "Pass",
			MinPercentage = 70f,
			DefaultPercentage = 90f,
		},
		new EducationGradingSchemeGrade
		{
			DisplayName = "Fail",
			MinPercentage = 0f,
			DefaultPercentage = 50f,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.GradingSchemes.PostAsync(requestBody);


```