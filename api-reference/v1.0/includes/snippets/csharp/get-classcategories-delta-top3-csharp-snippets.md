---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Education.Classes["{educationClass-id}"].AssignmentCategories
	.Delta()
	.Request()
	.Top(3)
	.GetAsync();

```