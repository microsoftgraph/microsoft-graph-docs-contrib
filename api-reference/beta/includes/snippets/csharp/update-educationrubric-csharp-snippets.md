---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationRubric
{
	DisplayName = "Example Credit Rubric after display name patch",
};
var result = await graphClient.Education.Me.Rubrics["{educationRubric-id}"].PatchAsync(requestBody);


```