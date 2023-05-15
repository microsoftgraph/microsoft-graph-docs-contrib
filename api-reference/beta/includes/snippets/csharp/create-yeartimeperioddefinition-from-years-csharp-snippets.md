---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.YearTimePeriodDefinition
{
	DisplayName = "Fiscal Year 2022",
	EndDate = new Date(DateTime.Parse("2023-06-15")),
	StartDate = new Date(DateTime.Parse("2022-09-01")),
	Year = new Microsoft.Graph.Beta.Models.IndustryData.YearReferenceValue
	{
		Code = "2022",
	},
};
var result = await graphClient.External.IndustryData.Years.PostAsync(requestBody);


```