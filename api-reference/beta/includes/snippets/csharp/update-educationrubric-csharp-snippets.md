---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationRubric
{
	DisplayName = "Example Credit Rubric after display name patch",
};
var result = await graphClient.Education.Me.Rubrics["{educationRubric-id}"].PatchAsync(requestBody);


```