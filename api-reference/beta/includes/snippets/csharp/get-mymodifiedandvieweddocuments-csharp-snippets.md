---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Insights.Used.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Orderby = new string []{ "LastUsed/LastAccessedDateTime desc" };
});


```