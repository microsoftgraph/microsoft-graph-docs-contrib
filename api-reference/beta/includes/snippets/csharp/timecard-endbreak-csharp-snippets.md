---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teams.Item.Schedule.TimeCards.Item.EndBreak;
using Microsoft.Graph.Beta.Models;

var requestBody = new EndBreakPostRequestBody
{
	Notes = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "ending break",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"isAtApprovedLocation" , true
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards["{timeCard-id}"].EndBreak.PostAsync(requestBody);


```