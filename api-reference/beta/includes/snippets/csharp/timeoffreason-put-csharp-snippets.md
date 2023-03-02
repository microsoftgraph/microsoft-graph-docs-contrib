---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.Schedule.TimeOffReasons.Item.TimeOffReason
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"displayName" , "Vacation"
		},
		{
			"iconType" , "plane"
		},
		{
			"isActive" , true
		},
	},
};
await graphClient.Teams["{team-id}"].Schedule.TimeOffReasons["{timeOffReason-id}"].PutAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
});


```