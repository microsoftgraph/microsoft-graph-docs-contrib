---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TimeOffRequest
{
	SenderMessage = "Need a break",
	TimeOffReasonId = "TOR_08c42f26-9b83-492c-bf52-f3609eb083e3",
	SenderUserId = "3f2504e0-4f89-11d3-9a0c-0305e82c3301",
	StartDateTime = DateTimeOffset.Parse("2025-05-26T07:00:00Z"),
	EndDateTime = DateTimeOffset.Parse("2025-05-27T07:00:00Z"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeOffRequests.PostAsync(requestBody);


```