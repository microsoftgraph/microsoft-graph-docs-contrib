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
		ThreadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2",
		MessageId = "0",
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
						TenantId = "9f386a15-f9cc-445b-8106-ac85e314a07b",
						DisplayName = "Bob",
					},
				}
			},
		},
	},
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb",
};
var result = await graphClient.Communications.Calls.PostAsync(requestBody);


```