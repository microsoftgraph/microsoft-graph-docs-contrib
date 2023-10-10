---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.AzureDataLakeConnector
{
	OdataType = "#microsoft.graph.industryData.azureDataLakeConnector",
	DisplayName = "CSV connector",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"sourceSystem@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')"
		},
	},
};
var result = await graphClient.External.IndustryData.DataConnectors.PostAsync(requestBody);


```