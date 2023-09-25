---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BrowserSite
{
	OdataType = "#microsoft.graph.browserSite",
	WebUrl = "www.microsoft.com",
	TargetEnvironment = BrowserSiteTargetEnvironment.InternetExplorer11,
	Comment = "A site that opens in InternetExplorer11",
	MergeType = BrowserSiteMergeType.Default,
	CompatibilityMode = BrowserSiteCompatibilityMode.Default,
	AllowRedirect = true,
};
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].Sites.PostAsync(requestBody);


```