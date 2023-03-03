---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var learningProvider = await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"]
	.Request()
	.GetAsync();

```