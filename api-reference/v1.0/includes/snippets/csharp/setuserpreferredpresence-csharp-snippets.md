---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Users.Item.Presence.SetUserPreferredPresence.SetUserPreferredPresencePostRequestBody
{
	Availability = "DoNotDisturb",
	Activity = "DoNotDisturb",
	ExpirationDuration = TimeSpan.Parse("PT8H"),
};
await graphClient.Users["{user-id}"].Presence.SetUserPreferredPresence.PostAsync(requestBody);


```