---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Users.Item.Presence.SetUserPreferredPresence;

var requestBody = new SetUserPreferredPresencePostRequestBody
{
	Availability = "DoNotDisturb",
	Activity = "DoNotDisturb",
	ExpirationDuration = TimeSpan.Parse("PT8H"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Users["{user-id}"].Presence.SetUserPreferredPresence.PostAsync(requestBody);


```