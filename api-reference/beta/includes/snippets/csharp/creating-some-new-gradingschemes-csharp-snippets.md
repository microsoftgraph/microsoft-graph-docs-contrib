---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationAssignmentSettings
{
	GradingSchemes = new List<EducationGradingScheme>
	{
		new EducationGradingScheme
		{
			DisplayName = "Pass/fail",
			Grades = new List<EducationGradingSchemeGrade>
			{
				new EducationGradingSchemeGrade
				{
					DisplayName = "Pass",
					MinPercentage = 60f,
					DefaultPercentage = 100f,
				},
				new EducationGradingSchemeGrade
				{
					DisplayName = "Fail",
					MinPercentage = 0f,
					DefaultPercentage = 0f,
				},
			},
		},
		new EducationGradingScheme
		{
			DisplayName = "Letters",
			Grades = new List<EducationGradingSchemeGrade>
			{
				new EducationGradingSchemeGrade
				{
					DisplayName = "A",
					MinPercentage = 90f,
				},
				new EducationGradingSchemeGrade
				{
					DisplayName = "B",
					MinPercentage = 80f,
				},
				new EducationGradingSchemeGrade
				{
					DisplayName = "C",
					MinPercentage = 70f,
				},
				new EducationGradingSchemeGrade
				{
					DisplayName = "D",
					MinPercentage = 60f,
				},
				new EducationGradingSchemeGrade
				{
					DisplayName = "F",
					MinPercentage = 0f,
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.PatchAsync(requestBody);


```