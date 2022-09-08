---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppSettings = await graphClient.Teamwork.TeamsAppSettings
	.Request()
	.GetAsync();

```