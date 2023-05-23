---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.PatchAsync(requestBody);


```