---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.TiIndicators.DeleteTiIndicators.DeleteTiIndicatorsPostRequestBody
{
	Value = new List<string>
	{
		"id-value1",
		"id-value2",
	},
};
var result = await graphClient.Security.TiIndicators.DeleteTiIndicators.PostAsync(requestBody);


```