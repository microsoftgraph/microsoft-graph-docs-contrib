---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var learningProviders = await graphClient.EmployeeExperience.LearningProviders
	.Request()
	.GetAsync();

```