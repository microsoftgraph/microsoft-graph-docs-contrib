---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.Schedule.OpenShifts.Item.OpenShift
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"schedulingGroupId" , "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
		},
		{
			"sharedOpenShift" , new 
			{
				Notes = "Inventory Management",
				OpenSlotCount = 5,
				DisplayName = "Field shift",
				StartDateTime = "2018-10-04T00:58:45.340Z",
				EndDateTime = "2018-10-04T09:50:45.332Z",
				Theme = "white",
				Activities = new List<>
				{
					new 
					{
						IsPaid = true,
						StartDateTime = "2018-10-04T00:58:45.340Z",
						EndDateTime = "2018-10-04T01:58:45.340Z",
						Code = "",
						DisplayName = "Lunch",
					},
				},
			}
		},
		{
			"draftOpenShift" , null
		},
	},
};
await graphClient.Teams["{team-id}"].Schedule.OpenShifts["{openShift-id}"].PutAsync(requestBody);


```