---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deletedTeams = await graphClient.Teamwork.DeletedTeams
	.Request()
	.GetAsync();

```