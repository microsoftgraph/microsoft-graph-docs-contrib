---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BrowserSite browserSite = new BrowserSite();
browserSite.setOdataType("#microsoft.graph.browserSite");
browserSite.setWebUrl("www.microsoft.com");
browserSite.setTargetEnvironment(BrowserSiteTargetEnvironment.InternetExplorer11);
browserSite.setComment("A site that opens in InternetExplorer11");
browserSite.setMergeType(BrowserSiteMergeType.Default);
browserSite.setCompatibilityMode(BrowserSiteCompatibilityMode.Default);
browserSite.setAllowRedirect(true);
BrowserSite result = graphClient.admin().edge().internetExplorerMode().siteLists().byBrowserSiteListId("{browserSiteList-id}").sites().post(browserSite);


```