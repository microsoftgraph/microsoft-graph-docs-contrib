---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationOutcome
{
	OdataType = "#microsoft.graph.educationFeedbackOutcome",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"feedback" , new 
			{
				Text = new 
				{
					Content = "This is feedback for the assignment as a whole.",
					ContentType = "text",
				},
			}
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes["{educationOutcome-id}"].PatchAsync(requestBody);


```