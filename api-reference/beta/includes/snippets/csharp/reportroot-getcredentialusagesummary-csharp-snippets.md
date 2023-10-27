---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Reports.GetCredentialUsageSummaryWithPeriod("{period}").GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "feature eq 'registration'";
});


```