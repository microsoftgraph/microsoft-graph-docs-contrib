---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAllMessages = await graphClient.Teamwork.DeletedTeams["{deletedTeam-id}"].Channels
	.GetAllMessages()
	.Request()
	.GetAsync();

```