---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ConversationThread
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"originalStartTimeZone" , "originalStartTimeZone-value"
		},
		{
			"originalEndTimeZone" , "originalEndTimeZone-value"
		},
		{
			"responseStatus" , new 
			{
				Response = "",
				Time = "datetime-value",
			}
		},
		{
			"uid" , "iCalUId-value"
		},
		{
			"reminderMinutesBeforeStart" , 99
		},
		{
			"isReminderOn" , true
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].PatchAsync(requestBody);


```