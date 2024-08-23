---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationFeedbackResourceOutcome
{
	OdataType = "#microsoft.graph.educationFeedbackResourceOutcome",
	FeedbackResource = new EducationWordResource
	{
		OdataType = "#microsoft.graph.educationWordResource",
		DisplayName = "Document1.docx",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes.PostAsync(requestBody);


```