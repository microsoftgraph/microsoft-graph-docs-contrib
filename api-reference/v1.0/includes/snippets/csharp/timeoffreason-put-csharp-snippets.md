---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teams.Item.Schedule.TimeOffReasons.Item.TimeOffReason
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