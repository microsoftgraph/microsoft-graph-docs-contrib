---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Edge.InternetExplorerMode.SiteLists.Item.Publish;
using Microsoft.Graph.Beta.Models;

var requestBody = new PublishPostRequestBody
{
	Revision = "1.0",
	Sites = new List<BrowserSite>
	{
		new BrowserSite
		{
			Id = "53e5f971-fc7b-4cd3-a1bf-34d7c0416882",
		},
		new BrowserSite
		{
			Id = "2e27cc86-3662-447e-b751-274fb9f869ea",
		},
	},
	SharedCookies = new List<BrowserSharedCookie>
	{
		new BrowserSharedCookie
		{
			Id = "7f639835-23ab-4793-b1e6-1a06fad127a2",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].Publish.PostAsync(requestBody);


```