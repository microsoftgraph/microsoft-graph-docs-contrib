---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new VirtualEventWebinar
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
var result = await graphClient.Solutions.VirtualEvents.Webinars["{virtualEventWebinar-id}"].PatchAsync(requestBody);


```