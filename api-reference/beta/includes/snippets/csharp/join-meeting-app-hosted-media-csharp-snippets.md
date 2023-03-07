---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Call
{
	OdataType = "#microsoft.graph.call",
	Direction = CallDirection.Outgoing,
	CallbackUri = "https://bot.contoso.com/callback",
	RequestedModalities = new List<Modality?>
	{
		Modality.Audio,
	},
	MediaConfig = new MediaConfig
	{
		OdataType = "#microsoft.graph.appHostedMediaConfig",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"blob" , "<Media Session Configuration>"
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
						TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a",
						DisplayName = "Bob",
					},
				}
			},
		},
	},
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a",
};
var result = await graphClient.Communications.Calls.PostAsync(requestBody);


```