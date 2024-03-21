---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Users.Item.Presence.ClearPresence;

var requestBody = new ClearPresencePostRequestBody
{
	SessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Users["{user-id}"].Presence.ClearPresence.PostAsync(requestBody);


```