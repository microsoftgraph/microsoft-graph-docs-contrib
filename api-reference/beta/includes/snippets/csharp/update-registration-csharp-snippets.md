---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new MeetingRegistration
{
	Subject = "Microsoft Ignite: Day 1",
	StartDateTime = DateTimeOffset.Parse("2021-11-02T08:00:00-08:00"),
	EndDateTime = DateTimeOffset.Parse("2021-11-02T15:45:00-08:00"),
	Speakers = new List<MeetingSpeaker>
	{
		new MeetingSpeaker
		{
			DisplayName = "Henry Ross",
			Bio = "Chairman and Chief Executive Officer",
		},
		new MeetingSpeaker
		{
			DisplayName = "Fred Ryan",
			Bio = "CVP",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.PatchAsync(requestBody);


```