---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Teams.Item.Schedule.TimeCards.ClockIn;
using Microsoft.Graph.Models;

var requestBody = new ClockInPostRequestBody
{
	IsAtApprovedLocation = true,
	Notes = new ItemBody
	{
		Content = "Started late due to traffic",
		ContentType = BodyType.Text,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards.ClockIn.PostAsync(requestBody);


```