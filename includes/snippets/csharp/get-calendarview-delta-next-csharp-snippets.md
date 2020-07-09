---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$deltatoken", "R0usmcMDNGg0J1E")
};

var delta = await graphClient.Me.CalendarView
	.Delta()
	.Request(queryOptions)
	.Header("Prefer","odata.maxpagesize=2")
	.GetAsync();

```