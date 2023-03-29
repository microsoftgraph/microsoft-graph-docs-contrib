---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Call
{
	OdataType = "#microsoft.graph.call",
	CallbackUri = "https://bot.contoso.com/callback",
	RequestedModalities = new List<Modality?>
	{
		Modality.Audio,
	},
	MediaConfig = new MediaConfig
	{
		OdataType = "#microsoft.graph.serviceHostedMediaConfig",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"preFetchMedia" , new List<>
				{
					new 
					{
						Uri = "https://cdn.contoso.com/beep.wav",
						ResourceId = "f8971b04-b53e-418c-9222-c82ce681a582",
					},
					new 
					{
						Uri = "https://cdn.contoso.com/cool.wav",
						ResourceId = "86dc814b-c172-4428-9112-60f8ecae1edb",
					},
				}
			},
		},
	},
	ChatInfo = new ChatInfo
	{
		OdataType = "#microsoft.graph.chatInfo",
		ThreadId = "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype",
		MessageId = "1533758867081",
	},
	MeetingInfo = new MeetingInfo
	{
		OdataType = "#microsoft.graph.organizerMeetingInfo",
		AllowConversationWithoutHost = true,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"organizer" , new 
				{
					OdataType = "#microsoft.graph.identitySet",
					User = new 
					{
						OdataType = "#microsoft.graph.identity",
						Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96",
						TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a",
						DisplayName = "Bob",
					},
				}
			},
		},
	},
};
var result = await graphClient.Communications.Calls.PostAsync(requestBody);


```