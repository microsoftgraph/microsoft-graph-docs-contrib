---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var statusMessage = new PresenceStatusMessage
{
	Message = new ItemBody
	{
		Content = "Hey I am available now",
		ContentType = BodyType.Text
	}
};

await graphClient.Users["{user-id}"].Presence
	.SetStatusMessage(statusMessage)
	.Request()
	.PostAsync();

```