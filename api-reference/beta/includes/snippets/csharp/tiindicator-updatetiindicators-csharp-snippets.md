---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.TiIndicators.UpdateTiIndicators.UpdateTiIndicatorsPostRequestBody
{
	Value = new List<TiIndicator>
	{
		new TiIndicator
		{
			Id = "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
			AdditionalInformation = "mytest",
		},
		new TiIndicator
		{
			Id = "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
			AdditionalInformation = "test again",
		},
	},
};
var result = await graphClient.Security.TiIndicators.UpdateTiIndicators.PostAsync(requestBody);


```