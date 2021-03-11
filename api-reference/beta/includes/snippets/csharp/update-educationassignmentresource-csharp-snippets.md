---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignmentResource = new EducationAssignmentResource
{
	DistributeForStudentWork = false
};

await graphClient.Education.Classes["11021"].Assignments["19002"].Resources["850f51b7-1df9-4ec0-bd62-64a0214b9cbf"]
	.Request()
	.UpdateAsync(educationAssignmentResource);

```