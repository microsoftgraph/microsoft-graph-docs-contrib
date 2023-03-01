---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teams.Item.Schedule.SchedulingGroups.Item.SchedulingGroup
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"displayName" , "Cashiers"
		},
		{
			"isActive" , true
		},
		{
			"userIds" , new List<string>
			{
				"c5d0c76b-80c4-481c-be50-923cd8d680a1",
				"2a4296b3-a28a-44ba-bc66-0274b9b95851",
			}
		},
	},
};
await graphClient.Teams["{team-id}"].Schedule.SchedulingGroups["{schedulingGroup-id}"].PutAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
});


```