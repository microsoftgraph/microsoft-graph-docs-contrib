---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teams.Item.Schedule.TimeCards.Item.StartBreak;
using Microsoft.Graph.Beta.Models;

var requestBody = new StartBreakPostRequestBody
{
	Notes = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "start break smaple notes",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"atAprovedLocation" , true
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards["{timeCard-id}"].StartBreak.PostAsync(requestBody);


```