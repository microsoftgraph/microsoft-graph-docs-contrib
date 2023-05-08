---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BrowserSite
{
	WebUrl = "www.microsoft.com",
	TargetEnvironment = BrowserSiteTargetEnvironment.MicrosoftEdge,
	MergeType = BrowserSiteMergeType.Default,
	CompatibilityMode = BrowserSiteCompatibilityMode.Default,
	AllowRedirect = false,
	Comment = "Updating to Edge.",
};
var result = await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].Sites["{browserSite-id}"].PatchAsync(requestBody);


```