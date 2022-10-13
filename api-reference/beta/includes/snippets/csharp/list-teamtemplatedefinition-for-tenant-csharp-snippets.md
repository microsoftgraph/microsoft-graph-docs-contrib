---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamTemplates = await graphClient.Teamwork.TeamTemplates
	.Request()
	.GetAsync();

```