---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;
using Microsoft.Graph.Beta.Models;

var requestBody = new SiteSource
{
	OdataType = "microsoft.graph.security.siteSource",
	Site = new Site
	{
		WebUrl = "https://m365x809305.sharepoint.com/sites/Design-topsecret",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].AdditionalSources.PostAsync(requestBody);


```