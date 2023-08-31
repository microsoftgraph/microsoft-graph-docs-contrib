---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationModule
{
	DisplayName = "New_Module5 updated",
	Description = "updated for description",
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Modules["{educationModule-id}"].PatchAsync(requestBody);


```