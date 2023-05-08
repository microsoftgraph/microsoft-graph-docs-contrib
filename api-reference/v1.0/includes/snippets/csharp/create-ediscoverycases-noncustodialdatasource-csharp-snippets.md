---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.Searches.Item.NoncustodialSources.Item.NoncustodialSource
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialDataSources/39333641443238353535383731453339"
		},
	},
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].NoncustodialSources["{ediscoveryNoncustodialDataSource-id}"].PostAsync(requestBody);


```