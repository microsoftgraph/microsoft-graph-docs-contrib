---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Call
{
	OdataType = "#microsoft.graph.call",
	CallbackUri = "https://bot.contoso.com/callback",
	RequestedModalities = new List<Modality?>
	{
		Modality.Audio,
	},
	MediaConfig = new ServiceHostedMediaConfig
	{
		OdataType = "#microsoft.graph.serviceHostedMediaConfig",
		PreFetchMedia = new List<MediaInfo>
		{
			new MediaInfo
			{
				Uri = "https://cdn.contoso.com/beep.wav",
				ResourceId = "f8971b04-b53e-418c-9222-c82ce681a582",
			},
			new MediaInfo
			{
				Uri = "https://cdn.contoso.com/cool.wav",
				ResourceId = "86dc814b-c172-4428-9112-60f8ecae1edb",
			},
		},
	},
	ChatInfo = new ChatInfo
	{
		OdataType = "#microsoft.graph.chatInfo",
		ThreadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2",
		MessageId = "0",
	},
	MeetingInfo = new OrganizerMeetingInfo
	{
		OdataType = "#microsoft.graph.organizerMeetingInfo",
		Organizer = new IdentitySet
		{
			OdataType = "#microsoft.graph.identitySet",
			User = new Identity
			{
				OdataType = "#microsoft.graph.identity",
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96",
				DisplayName = "Bob",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"tenantId" , "86dc81db-c112-4228-9222-63f3esaa1edb"
					},
				},
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"allowConversationWithoutHost" , true
			},
		},
	},
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb",
};
var result = await graphClient.Communications.Calls.PostAsync(requestBody);


```