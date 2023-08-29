---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationAssignmentSettings
{
	SubmissionAnimationDisabled = true,
};
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentSettings.PatchAsync(requestBody);


```