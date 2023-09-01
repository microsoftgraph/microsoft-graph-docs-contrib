---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.YearTimePeriodDefinition
{
	DisplayName = "Fiscal Year 2022",
	Id = "ebf18762-ab92-487e-21d1-08daddab28bb",
};
var result = await graphClient.External.IndustryData.Years["{yearTimePeriodDefinition-id}"].PatchAsync(requestBody);


```