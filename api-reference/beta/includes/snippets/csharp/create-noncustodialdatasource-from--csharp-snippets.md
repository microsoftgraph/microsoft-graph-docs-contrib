---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.SourceCollections.Item.NoncustodialSources.Item.NoncustodialSource
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://canary.graph.microsoft.com/testprodbetancsdsaslist/compliance/ediscovery/cases/06d52284-ed81-49b8-904a-b863d3164731/noncustodialDataSources/39383530323537383742433232433246"
		},
	},
};
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].SourceCollections["{sourceCollection-id}"].NoncustodialSources["{noncustodialDataSource-id}"].PostAsync(requestBody);


```