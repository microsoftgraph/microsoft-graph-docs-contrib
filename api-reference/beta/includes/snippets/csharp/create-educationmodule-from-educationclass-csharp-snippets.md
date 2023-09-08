---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationModule
{
	DisplayName = "Module 2",
	Description = "Description for Module 2",
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Modules.PostAsync(requestBody);


```