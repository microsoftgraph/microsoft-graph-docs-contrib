---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.Security.SiteSource
{
	OdataType = "microsoft.graph.security.siteSource",
	Site = new Site
	{
		WebUrl = "https://contoso.sharepoint.com/sites/SecretSite",
	},
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].AdditionalSources.PostAsync(requestBody);


```