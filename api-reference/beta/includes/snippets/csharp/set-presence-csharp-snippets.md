---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.Presence.SetPresence.SetPresencePostRequestBody
{
	SessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87",
	Availability = "Available",
	Activity = "Available",
	ExpirationDuration = TimeSpan.Parse("PT1H"),
};
await graphClient.Users["{user-id}"].Presence.SetPresence.PostAsync(requestBody);


```