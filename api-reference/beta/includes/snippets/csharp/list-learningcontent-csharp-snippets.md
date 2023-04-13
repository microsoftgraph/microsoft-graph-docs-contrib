---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var learningContents = await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"].LearningContents
	.Request()
	.GetAsync();

```