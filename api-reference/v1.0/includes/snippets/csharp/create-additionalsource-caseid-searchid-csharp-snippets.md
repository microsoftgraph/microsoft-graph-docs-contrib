---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.Security.DataSource
{
	OdataType = "microsoft.graph.security.siteSource",
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
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].AdditionalSources.PostAsync(requestBody);


```