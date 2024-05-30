---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnlineMeeting
{
	StartDateTime = DateTimeOffset.Parse("2020-09-09T14:33:30.8546353-07:00"),
	EndDateTime = DateTimeOffset.Parse("2020-09-09T15:03:30.8566356-07:00"),
	Subject = "Patch Meeting Subject",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].PatchAsync(requestBody);


```