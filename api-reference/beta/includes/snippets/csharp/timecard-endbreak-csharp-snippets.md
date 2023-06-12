---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.Schedule.TimeCards.Item.EndBreak.EndBreakPostRequestBody
{
	Notes = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "end break smaple notes",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"atAprovedLocation" , true
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards["{timeCard-id}"].EndBreak.PostAsync(requestBody);


```