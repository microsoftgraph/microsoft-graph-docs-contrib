---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var revision = "1.0";

var sites = new List<BrowserSite>()
{
	new BrowserSite
	{
		Id = "53e5f971-fc7b-4cd3-a1bf-34d7c0416882"
	},
	new BrowserSite
	{
		Id = "2e27cc86-3662-447e-b751-274fb9f869ea"
	}
};

var sharedCookies = new List<BrowserSharedCookie>()
{
	new BrowserSharedCookie
	{
		Id = "7f639835-23ab-4793-b1e6-1a06fad127a2"
	}
};

await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"]
	.Publish(revision,sites,sharedCookies)
	.Request()
	.PostAsync();

```