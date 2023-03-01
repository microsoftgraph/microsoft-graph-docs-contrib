---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.Schedule.Shifts.Item.Shift
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"
		},
		{
			"createdDateTime" , "2019-03-14T04:32:51.451Z"
		},
		{
			"lastModifiedDateTime" , "2019-03-14T05:32:51.451Z"
		},
		{
			"userId" , "c5d0c76b-80c4-481c-be50-923cd8d680a1"
		},
		{
			"schedulingGroupId" , "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
		},
		{
			"lastModifiedBy" , new 
			{
				Application = null,
				Device = null,
				Conversation = null,
				User = new 
				{
					Id = "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
					DisplayName = "John Doe",
				},
			}
		},
		{
			"sharedShift" , new 
			{
				DisplayName = "Day shift",
				Notes = "Please do inventory as part of your shift.",
				StartDateTime = "2019-03-11T15:00:00Z",
				EndDateTime = "2019-03-12T00:00:00Z",
				Theme = "blue",
				Activities = new List<>
				{
					new 
					{
						IsPaid = true,
						StartDateTime = "2019-03-11T15:00:00Z",
						EndDateTime = "2019-03-11T15:15:00Z",
						Code = "",
						DisplayName = "Lunch",
					},
				},
			}
		},
		{
			"draftShift" , new 
			{
				DisplayName = "Day shift",
				Notes = "Please do inventory as part of your shift.",
				StartDateTime = "2019-03-11T15:00:00Z",
				EndDateTime = "2019-03-12T00:00:00Z",
				Theme = "blue",
				Activities = new List<>
				{
					new 
					{
						IsPaid = true,
						StartDateTime = "2019-03-11T15:00:00Z",
						EndDateTime = "2019-03-11T15:30:00Z",
						Code = "",
						DisplayName = "Lunch",
					},
				},
			}
		},
	},
};
await graphClient.Teams["{team-id}"].Schedule.Shifts["{shift-id}"].PutAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
});


```