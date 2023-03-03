---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"].Reference
	.Request()
	.DeleteAsync();

```