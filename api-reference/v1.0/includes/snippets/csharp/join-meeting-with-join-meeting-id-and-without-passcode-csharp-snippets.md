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
	MeetingInfo = new MeetingInfo
	{
		OdataType = "#microsoft.graph.joinMeetingIdMeetingInfo",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"joinMeetingId" , "1234567"
			},
			{
				"passcode" , null
			},
		},
	},
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb",
};
var result = await graphClient.Communications.Calls.PostAsync(requestBody);


```