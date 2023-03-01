---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teams.Item.Schedule.TimesOff.Item.TimesOff
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"userId" , "c5d0c76b-80c4-481c-be50-923cd8d680a1"
		},
		{
			"sharedTimeOff" , new 
			{
				TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
				StartDateTime = "2019-03-11T07:00:00Z",
				EndDateTime = "2019-03-12T07:00:00Z",
				Theme = "white",
			}
		},
		{
			"draftTimeOff" , new 
			{
				TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
				StartDateTime = "2019-03-11T07:00:00Z",
				EndDateTime = "2019-03-12T07:00:00Z",
				Theme = "pink",
			}
		},
	},
};
await graphClient.Teams["{team-id}"].Schedule.TimesOff["{timeOff-id}"].PutAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
});


```