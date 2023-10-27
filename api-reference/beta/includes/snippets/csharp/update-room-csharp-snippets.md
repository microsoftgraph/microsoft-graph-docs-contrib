---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Room
{
	OdataType = "microsoft.graph.room",
	Nickname = "Conf Room",
	Building = "1",
	Label = "100",
	Capacity = 50,
	IsWheelChairAccessible = false,
};
var result = await graphClient.Places["{place-id}"].PatchAsync(requestBody);


```