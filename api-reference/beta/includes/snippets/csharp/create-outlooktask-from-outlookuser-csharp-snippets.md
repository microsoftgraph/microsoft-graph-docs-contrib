---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OutlookTask
{
	Subject = "Shop for children's weekend",
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-05-03T09:00:00",
		TimeZone = "Eastern Standard Time",
	},
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-05-05T16:00:00",
		TimeZone = "Eastern Standard Time",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Outlook.Tasks.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```