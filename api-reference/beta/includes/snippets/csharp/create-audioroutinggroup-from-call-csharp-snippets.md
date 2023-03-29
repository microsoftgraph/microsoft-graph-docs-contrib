---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AudioRoutingGroup
{
	Id = "oneToOne",
	RoutingMode = RoutingMode.OneToOne,
	Sources = new List<string>
	{
		"632899f8-2ea1-4604-8413-27bd2892079f",
	},
	Receivers = new List<string>
	{
		"550fae72-d251-43ec-868c-373732c2704f",
	},
};
var result = await graphClient.Communications.Calls["{call-id}"].AudioRoutingGroups.PostAsync(requestBody);


```