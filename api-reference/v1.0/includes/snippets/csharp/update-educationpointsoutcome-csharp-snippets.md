---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationOutcome
{
	OdataType = "#microsoft.graph.educationPointsOutcome",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"points" , new 
			{
				OdataType = "#microsoft.graph.educationAssignmentPointsGrade",
				Points = 85.0,
			}
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes["{educationOutcome-id}"].PatchAsync(requestBody);


```