---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Directory.Recommendations.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'";
	requestConfiguration.QueryParameters.Expand = new string []{ "impactedResources" };
});


```