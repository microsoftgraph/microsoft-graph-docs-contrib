---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teams.Item.Schedule.Share.SharePostRequestBody
{
	NotifyTeam = true,
	StartDateTime = DateTimeOffset.Parse("2018-10-08T00:00:00.000Z"),
	EndDateTime = DateTimeOffset.Parse("2018-10-15T00:00:00.000Z"),
};
await graphClient.Teams["{team-id}"].Schedule.Share.PostAsync(requestBody);


```