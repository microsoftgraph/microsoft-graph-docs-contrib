---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{user-id}"].Presence
	.ClearUserPreferredPresence()
	.Request()
	.PostAsync();

```