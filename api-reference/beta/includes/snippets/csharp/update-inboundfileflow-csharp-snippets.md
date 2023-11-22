---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new InboundFlow
{
	OdataType = "#microsoft.graph.industryData.inboundFlow",
	DisplayName = "My Inbound Flow",
	EffectiveDateTime = DateTimeOffset.Parse("2022-03-12T16:40:46.924769+05:30"),
	ExpirationDateTime = DateTimeOffset.Parse("2023-03-12T16:40:46.924769+05:30"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.InboundFlows["{inboundFlow-id}"].PatchAsync(requestBody);


```