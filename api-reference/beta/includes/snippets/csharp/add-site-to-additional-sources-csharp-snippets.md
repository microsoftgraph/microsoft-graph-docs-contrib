---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.DataSource
{
	OdataType = "microsoft.graph.ediscovery.siteSource",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"site" , new 
			{
				WebUrl = "https://contoso.sharepoint.com/sites/SecretSite",
			}
		},
	},
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].SourceCollections["{sourceCollection-id}"].AdditionalSources.PostAsync(requestBody);


```