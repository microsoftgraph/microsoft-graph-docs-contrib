---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var availability = "DoNotDisturb";

var activity = "DoNotDisturb";

var expirationDuration = new Duration("PT8H");

await graphClient.Users["{user-id}"].Presence
	.SetUserPreferredPresence(availability,activity,expirationDuration)
	.Request()
	.PostAsync();

```