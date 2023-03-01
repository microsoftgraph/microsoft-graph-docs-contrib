---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.Schedule.TimeCards.Item.TimeCard
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"userId" , "70e47528-2fae-42b5-9d8e-ee73ccd90603"
		},
		{
			"state" , "clockedOut"
		},
		{
			"confirmedBy" , "None"
		},
		{
			"notes" , null
		},
		{
			"clockInEvent" , new 
			{
				DateTime = "2021-05-21T21:58:41.327Z",
				AtApprovedLocation = null,
				Notes = new 
				{
					ContentType = "text",
					Content = "update sample notes",
				},
			}
		},
		{
			"clockOutEvent" , new 
			{
				DateTime = "2021-05-21T22:01:46.205Z",
				AtApprovedLocation = null,
				Notes = new 
				{
					ContentType = "text",
					Content = "update sample notes",
				},
			}
		},
		{
			"breaks" , new List<>
			{
				new 
				{
					BreakId = "BRK_138f4751-68b1-44c1-aca2-2b26cba9e73f",
					Notes = null,
					Start = new 
					{
						DateTime = "2021-05-21T21:59:59.328Z",
						AtApprovedLocation = null,
						Notes = new 
						{
							ContentType = "text",
							Content = "update sample notes",
						},
					},
					End = new 
					{
						DateTime = "2021-05-21T22:01:10.205Z",
						AtApprovedLocation = null,
						Notes = new 
						{
							ContentType = "text",
							Content = "update sample notes",
						},
					},
				},
			}
		},
	},
};
await graphClient.Teams["{team-id}"].Schedule.TimeCards["{timeCard-id}"].PutAsync(requestBody);


```