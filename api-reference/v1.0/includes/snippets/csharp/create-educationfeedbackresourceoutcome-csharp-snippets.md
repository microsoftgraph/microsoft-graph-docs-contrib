---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationFeedbackResourceOutcome
{
	OdataType = "#microsoft.graph.educationFeedbackResourceOutcome",
	FeedbackResource = new EducationWordResource
	{
		OdataType = "#microsoft.graph.educationWordResource",
		DisplayName = "Document1.docx",
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes.PostAsync(requestBody);


```