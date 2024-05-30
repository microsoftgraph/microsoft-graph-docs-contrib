---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnlineMeeting
{
	StartDateTime = DateTimeOffset.Parse("2019-07-12T14:30:34.2444915-07:00"),
	EndDateTime = DateTimeOffset.Parse("2019-07-12T15:00:34.2464912-07:00"),
	Subject = "User meeting",
	JoinMeetingIdSettings = new JoinMeetingIdSettings
	{
		IsPasscodeRequired = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.OnlineMeetings.PostAsync(requestBody);


```