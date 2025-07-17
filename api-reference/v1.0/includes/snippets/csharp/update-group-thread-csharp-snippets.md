---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

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
			"responseStatus" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"response", new UntypedString("")
				},
				{
					"time", new UntypedString("datetime-value")
				},
			})
		},
		{
			"iCalUId" , "iCalUId-value"
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