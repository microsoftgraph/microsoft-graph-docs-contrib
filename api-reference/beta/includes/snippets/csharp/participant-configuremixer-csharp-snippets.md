---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Participants.Item.Participant
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"clientContext" , "d45324c1-fcb5-430a-902c-f20af696537c"
		},
		{
			"participantMixerLevels" , new List<>
			{
				new 
				{
					Participant = "550fae72-d251-43ec-868c-373732c2704f",
					Exclusive = true,
					Ducking = new 
					{
						RampActive = 50,
						RampInactive = 50,
						LowerLevel = 10,
						UpperLevel = 50,
					},
					SourceLevels = new List<>
					{
						new 
						{
							Participant = "632899f8-2ea1-4604-8413-27bd2892079f",
							Level = 50,
							DuckOthers = false,
						},
					},
				},
			}
		},
	},
};
await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].PostAsync(requestBody);


```