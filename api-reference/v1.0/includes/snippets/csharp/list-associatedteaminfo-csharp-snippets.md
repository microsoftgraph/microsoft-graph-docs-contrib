---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var associatedTeams = await graphClient.Me.Teamwork.AssociatedTeams
	.Request()
	.GetAsync();

```