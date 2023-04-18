---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Reports.GetCredentialUsageSummaryWithPeriod("{period}").GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "feature eq 'registration'";
});


```