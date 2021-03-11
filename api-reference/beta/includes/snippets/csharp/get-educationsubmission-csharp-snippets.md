---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSubmission = await graphClient.Education.Classes["11010"].Assignments["19002"].Submissions["33223"]
	.Request()
	.GetAsync();

```