---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Teams.Item.Schedule.Share;

var requestBody = new SharePostRequestBody
{
	NotifyTeam = true,
	StartDateTime = DateTimeOffset.Parse("2018-10-08T00:00:00.000Z"),
	EndDateTime = DateTimeOffset.Parse("2018-10-15T00:00:00.000Z"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Teams["{team-id}"].Schedule.Share.PostAsync(requestBody);


```