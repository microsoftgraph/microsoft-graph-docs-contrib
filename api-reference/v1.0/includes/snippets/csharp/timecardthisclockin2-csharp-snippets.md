---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Teams.Item.Schedule.TimeCards.ClockIn;

var requestBody = new ClockInPostRequestBody
{
	IsAtApprovedLocation = true,
	OnBehalfOfUserId = "3f29c8e7-7a41-4d8e-99d6-2b1f76c9421e",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards.ClockIn.PostAsync(requestBody);


```