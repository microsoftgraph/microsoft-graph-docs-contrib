---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new AzureDataLakeConnector
{
	OdataType = "microsoft.graph.industryData.azureDataLakeConnector",
	DisplayName = "API Monitor 60201009",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.DataConnectors["{industryDataConnector-id}"].PatchAsync(requestBody);


```