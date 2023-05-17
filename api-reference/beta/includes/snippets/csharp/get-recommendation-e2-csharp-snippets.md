---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Directory.Recommendations.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "recommendationType eq 'turnOffPerUserMFA'";
});


```