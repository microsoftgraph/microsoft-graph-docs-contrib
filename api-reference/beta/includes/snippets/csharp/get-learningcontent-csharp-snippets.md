---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var learningContent = await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"].LearningContents["{learningContent-id}"]
	.Request()
	.GetAsync();

```