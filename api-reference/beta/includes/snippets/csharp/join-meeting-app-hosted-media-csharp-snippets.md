---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = new Call
{
	Direction = CallDirection.Outgoing,
	CallbackUri = "https://bot.contoso.com/callback",
	RequestedModalities = new List<Modality>()
	{
		Modality.Audio
	},
	MediaConfig = new AppHostedMediaConfig
	{
		Blob = "<Media Session Configuration>"
	},
	ChatInfo = new ChatInfo
	{
		ThreadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2",
		MessageId = "0"
	},
	MeetingInfo = new OrganizerMeetingInfo
	{
		Organizer = new IdentitySet
		{
			User = new Identity
			{
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96",
				TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a",
				DisplayName = "Bob"
			}
		},
		AllowConversationWithoutHost = true
	},
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
};

await graphClient.Communications.Calls
	.Request()
	.AddAsync(call);

```