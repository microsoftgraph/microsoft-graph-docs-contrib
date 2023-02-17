---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var statusMessage = new PresenceStatusMessage
{
	Message = new ItemBody
	{
		Content = "Hey I'm currently in a meeting.",
		ContentType = BodyType.Text
	},
	ExpiryDateTime = new DateTimeTimeZone
	{
		DateTime = "2022-10-18T17:05:33.2079781",
		TimeZone = "Pacific Standard Time"
	}
};

await graphClient.Users["{user-id}"].Presence
	.SetStatusMessage(statusMessage)
	.Request()
	.PostAsync();

```