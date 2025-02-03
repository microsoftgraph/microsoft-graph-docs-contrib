---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new VirtualEventTownhall
{
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2024-03-31T10:00:00",
		TimeZone = "Pacific Standard Time",
	},
	EndDateTime = new DateTimeTimeZone
	{
		DateTime = "2024-03-31T17:00:00",
		TimeZone = "Pacific Standard Time",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Townhalls["{virtualEventTownhall-id}"].PatchAsync(requestBody);


```