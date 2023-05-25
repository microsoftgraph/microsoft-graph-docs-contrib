---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Users.Item.Presence.ClearUserPreferredPresence.ClearUserPreferredPresencePostRequestBody
{
};
await graphClient.Users["{user-id}"].Presence.ClearUserPreferredPresence.PostAsync(requestBody);


```