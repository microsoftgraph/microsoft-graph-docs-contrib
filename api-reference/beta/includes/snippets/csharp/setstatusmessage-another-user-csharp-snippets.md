---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.Presence.SetStatusMessage.SetStatusMessagePostRequestBody
{
	StatusMessage = new PresenceStatusMessage
	{
		Message = new ItemBody
		{
			Content = "Hey I am available now",
			ContentType = BodyType.Text,
		},
	},
};
await graphClient.Users["{user-id}"].Presence.SetStatusMessage.PostAsync(requestBody);


```