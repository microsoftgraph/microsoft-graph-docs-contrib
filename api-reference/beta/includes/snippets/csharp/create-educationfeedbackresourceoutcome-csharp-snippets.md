---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationOutcome = new EducationFeedbackResourceOutcome
{
	FeedbackResource = new EducationWordResource
	{
		DisplayName = "Document1.docx"
	}
};

await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes
	.Request()
	.AddAsync(educationOutcome);

```