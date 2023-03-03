---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Education.Classes["{educationClass-id}"].Assignments
	.Delta()
	.Request()
	.GetAsync();

```