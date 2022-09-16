---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users
	.Request()
	.Select("ext55gb1l09_msLearnCourses")
	.GetAsync();

```