---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.InboundFlow
{
	OdataType = "#microsoft.graph.industryData.inboundFlow",
	DisplayName = "My Inbound Flow",
	EffectiveDateTime = DateTimeOffset.Parse("2022-03-12T16:40:46.924769+05:30"),
	ExpirationDateTime = DateTimeOffset.Parse("2023-03-12T16:40:46.924769+05:30"),
};
var result = await graphClient.External.IndustryData.InboundFlows["{inboundFlow-id}"].PatchAsync(requestBody);


```