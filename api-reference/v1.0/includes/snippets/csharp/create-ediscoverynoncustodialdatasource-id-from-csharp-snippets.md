---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;
using Microsoft.Graph.Models;

var requestBody = new EdiscoveryNoncustodialDataSource
{
	DataSource = new SiteSource
	{
		OdataType = "microsoft.graph.security.siteSource",
		Site = new Site
		{
			WebUrl = "https://m365x809305.sharepoint.com/sites/Design-topsecret",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].NoncustodialDataSources.PostAsync(requestBody);


```