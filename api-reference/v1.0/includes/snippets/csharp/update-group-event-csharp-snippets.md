---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Event
{
	Location = new Location
	{
		DisplayName = "Conf Room 2",
	},
};
var result = await graphClient.Groups["{group-id}"].Calendar.Events["{event-id}"].PatchAsync(requestBody);


```