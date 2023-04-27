---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.IndustryDataConnector
{
	OdataType = "microsoft.graph.industryData.azureDataLakeConnector",
	DisplayName = "API Monitor 60201009",
};
var result = await graphClient.External.IndustryData.DataConnectors["{industryDataConnector-id}"].PatchAsync(requestBody);


```