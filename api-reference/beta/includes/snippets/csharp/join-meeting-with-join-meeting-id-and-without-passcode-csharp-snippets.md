---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = new Call
{
	CallbackUri = "https://bot.contoso.com/callback",
	RequestedModalities = new List<Modality>()
	{
		Modality.Audio
	},
	MediaConfig = new ServiceHostedMediaConfig
	{
		PreFetchMedia = new List<MediaInfo>()
		{
			new MediaInfo
			{
				Uri = "https://cdn.contoso.com/beep.wav",
				ResourceId = "f8971b04-b53e-418c-9222-c82ce681a582"
			},
			new MediaInfo
			{
				Uri = "https://cdn.contoso.com/cool.wav",
				ResourceId = "86dc814b-c172-4428-9112-60f8ecae1edb"
			}
		}
	},
	MeetingInfo = new JoinMeetingIdMeetingInfo
	{
		JoinMeetingId = "1234567",
		Passcode = null
	},
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb"
};

await graphClient.Communications.Calls
	.Request()
	.AddAsync(call);

```