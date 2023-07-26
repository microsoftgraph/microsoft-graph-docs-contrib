---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Reports.GetM365AppUserDetailWithPeriod("{period}").GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Format = "application/json";
});


```