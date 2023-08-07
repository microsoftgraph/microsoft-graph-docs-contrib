---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationPointsOutcome
{
	OdataType = "#microsoft.graph.educationPointsOutcome",
	Points = new EducationAssignmentPointsGrade
	{
		OdataType = "#microsoft.graph.educationAssignmentPointsGrade",
		Points = 85.0f,
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes["{educationOutcome-id}"].PatchAsync(requestBody);


```