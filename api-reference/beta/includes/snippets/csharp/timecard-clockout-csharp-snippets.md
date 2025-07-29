---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teams.Item.Schedule.TimeCards.Item.ClockOut;
using Microsoft.Graph.Beta.Models;

var requestBody = new ClockOutPostRequestBody
{
	IsAtApprovedLocation = true,
	Notes = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "clocking out",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards["{timeCard-id}"].ClockOut.PostAsync(requestBody);


```