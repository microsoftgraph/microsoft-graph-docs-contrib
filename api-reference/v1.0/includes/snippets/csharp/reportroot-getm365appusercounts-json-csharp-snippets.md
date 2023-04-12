---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Reports.GetM365AppUserCountsWithPeriod("{period}").GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Format = "application/json";
});


```