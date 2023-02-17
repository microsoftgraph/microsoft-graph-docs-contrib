---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var browserSite = new BrowserSite
{
	WebUrl = "www.microsoft.com",
	TargetEnvironment = BrowserSiteTargetEnvironment.InternetExplorer11,
	Comment = "A site that opens in InternetExplorer11",
	MergeType = BrowserSiteMergeType.Default,
	CompatibilityMode = BrowserSiteCompatibilityMode.Default,
	AllowRedirect = true
};

await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].Sites
	.Request()
	.AddAsync(browserSite);

```