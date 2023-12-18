---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;
using Microsoft.Graph.Models;

var requestBody = new SiteSource
{
	OdataType = "microsoft.graph.security.siteSource",
	Site = new Site
	{
		WebUrl = "https://contoso.sharepoint.com/sites/SecretSite",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].AdditionalSources.PostAsync(requestBody);


```