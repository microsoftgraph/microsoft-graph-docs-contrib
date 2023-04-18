---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.InboundFlow
{
	OdataType = "#microsoft.graph.industryData.inboundFileFlow",
	DisplayName = "Updated flow name",
};
var result = await graphClient.External.IndustryData.InboundFlows["{inboundFlow-id}"].PatchAsync(requestBody);


```