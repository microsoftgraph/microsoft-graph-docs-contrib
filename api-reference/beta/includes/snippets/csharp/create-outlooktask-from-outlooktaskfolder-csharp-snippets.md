---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OutlookTask
{
	Subject = "Shop for dinner",
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-04-23T18:00:00",
		TimeZone = "Pacific Standard Time",
	},
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-04-25T13:00:00",
		TimeZone = "Pacific Standard Time",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Outlook.TaskFolders["{outlookTaskFolder-id}"].Tasks.PostAsync(requestBody);


```