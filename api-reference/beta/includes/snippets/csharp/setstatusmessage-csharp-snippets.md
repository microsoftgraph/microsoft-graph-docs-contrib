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
			Content = "Hey I'm currently in a meeting.",
			ContentType = BodyType.Text,
		},
		ExpiryDateTime = new DateTimeTimeZone
		{
			DateTime = "2022-10-18T17:05:33.2079781",
			TimeZone = "Pacific Standard Time",
		},
	},
};
await graphClient.Users["{user-id}"].Presence.SetStatusMessage.PostAsync(requestBody);


```