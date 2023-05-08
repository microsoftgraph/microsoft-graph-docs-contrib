---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationUser
{
	DisplayName = "Rogelio Cazares",
	GivenName = "Rogelio",
	MiddleName = "Fernando",
	Surname = "Cazares",
};
var result = await graphClient.Education.Users["{educationUser-id}"].PatchAsync(requestBody);


```