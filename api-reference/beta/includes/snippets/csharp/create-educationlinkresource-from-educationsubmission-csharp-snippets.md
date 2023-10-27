---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationSubmissionResource
{
	Resource = new EducationLinkResource
	{
		DisplayName = "Wikipedia",
		Link = "https://en.wikipedia.org/wiki/Main_Page",
		OdataType = "#microsoft.graph.educationLinkResource",
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Resources.PostAsync(requestBody);


```