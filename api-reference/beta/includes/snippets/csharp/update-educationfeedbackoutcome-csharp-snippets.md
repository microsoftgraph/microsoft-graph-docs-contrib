---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationFeedbackOutcome
{
	OdataType = "#microsoft.graph.educationFeedbackOutcome",
	Feedback = new EducationFeedback
	{
		Text = new EducationItemBody
		{
			Content = "This is feedback for the assignment as a whole.",
			ContentType = BodyType.Text,
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes["{educationOutcome-id}"].PatchAsync(requestBody);


```