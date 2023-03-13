---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationSchool
{
	DisplayName = "Fabrikam Arts High School",
	Description = "Magnate school for the arts. Los Angeles School District",
};
var result = await graphClient.Education.Schools["{educationSchool-id}"].PatchAsync(requestBody);


```