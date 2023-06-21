---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.NoncustodialDataSource
{
	ApplyHoldToSource = false,
	DataSource = new Microsoft.Graph.Beta.Models.Ediscovery.SiteSource
	{
		OdataType = "microsoft.graph.ediscovery.siteSource",
		Site = new Site
		{
			WebUrl = "https://contoso.sharepoint.com/sites/SecretSite",
		},
	},
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].NoncustodialDataSources.PostAsync(requestBody);


```