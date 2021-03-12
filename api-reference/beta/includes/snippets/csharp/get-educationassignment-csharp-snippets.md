---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignment = await graphClient.Education.Classes["11014"].Assignments["19002"]
	.Request()
	.GetAsync();

```