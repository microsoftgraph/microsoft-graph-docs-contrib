---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.Presence.ClearUserPreferredPresence.ClearUserPreferredPresencePostRequestBody
{
};
await graphClient.Users["{user-id}"].Presence.ClearUserPreferredPresence.PostAsync(requestBody);


```