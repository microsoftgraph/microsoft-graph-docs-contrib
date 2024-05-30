---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new YearTimePeriodDefinition
{
	DisplayName = "Fiscal Year 2022",
	Id = "ebf18762-ab92-487e-21d1-08daddab28bb",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.Years["{yearTimePeriodDefinition-id}"].PatchAsync(requestBody);


```