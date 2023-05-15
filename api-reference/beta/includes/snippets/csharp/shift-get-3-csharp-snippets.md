---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.Settings.ShiftPreferences.ShiftPreferencesPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7"
		},
		{
			"@odata.etag" , "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa"
		},
		{
			"availability" , new List<>
			{
				new 
				{
					Recurrence = new 
					{
						Pattern = new 
						{
							Type = "Weekly",
							DaysOfWeek = new List<string>
							{
								"Monday",
								"Wednesday",
								"Friday",
							},
							Interval = 1,
						},
						Range = new 
						{
							Type = "noEnd",
						},
					},
					TimeZone = "Pacific Standard Time",
					TimeSlots = null,
				},
			}
		},
	},
};
await graphClient.Users["{user-id}"].Settings.ShiftPreferences.PutAsync(requestBody);


```