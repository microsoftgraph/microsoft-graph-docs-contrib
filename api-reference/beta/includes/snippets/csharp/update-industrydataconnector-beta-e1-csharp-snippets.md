---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.AzureDataLakeConnector
{
	OdataType = "microsoft.graph.industryData.azureDataLakeConnector",
	DisplayName = "API Monitor 60201009",
};
var result = await graphClient.External.IndustryData.DataConnectors["{industryDataConnector-id}"].PatchAsync(requestBody);


```