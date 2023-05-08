---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.TiIndicators.DeleteTiIndicatorsByExternalId.DeleteTiIndicatorsByExternalIdPostRequestBody
{
	Value = new List<string>
	{
		"externalId-value1",
		"externalId-value2",
	},
};
var result = await graphClient.Security.TiIndicators.DeleteTiIndicatorsByExternalId.PostAsync(requestBody);


```