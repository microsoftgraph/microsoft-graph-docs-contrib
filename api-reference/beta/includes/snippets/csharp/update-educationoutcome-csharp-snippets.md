---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationOutcome
{
	OdataType = "#microsoft.graph.educationRubricOutcome",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"rubricQualityFeedback" , new List<>
			{
				new 
				{
					QualityId = "9a145aa8-f3d9-43a1-8f77-5387ff0693f2",
					Feedback = new 
					{
						Content = "This is feedback specific to the first quality of the rubric.",
						ContentType = "text",
					},
				},
				new 
				{
					QualityId = "d2331fb2-2761-402e-8de6-93e0afaa076e",
					Feedback = new 
					{
						Content = "This is feedback specific to the second quality of the rubric.",
						ContentType = "text",
					},
				},
			}
		},
		{
			"rubricQualitySelectedLevels" , new List<>
			{
				new 
				{
					QualityId = "9a145aa8-f3d9-43a1-8f77-5387ff0693f2",
					ColumnId = "4fb17a1d-5681-46c2-a295-4e305c3eae23",
				},
				new 
				{
					QualityId = "d2331fb2-2761-402e-8de6-93e0afaa076e",
					ColumnId = "aac076bf-51ba-48c5-a2e0-ee235b0b9740",
				},
			}
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes["{educationOutcome-id}"].PatchAsync(requestBody);


```