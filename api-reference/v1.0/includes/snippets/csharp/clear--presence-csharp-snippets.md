---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Users.Item.Presence.ClearPresence.ClearPresencePostRequestBody
{
	SessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87",
};
await graphClient.Users["{user-id}"].Presence.ClearPresence.PostAsync(requestBody);


```