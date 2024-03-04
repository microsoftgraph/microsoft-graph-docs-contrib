---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BrowserSite browserSite = new BrowserSite();
browserSite.setWebUrl("www.microsoft.com");
browserSite.setTargetEnvironment(BrowserSiteTargetEnvironment.MicrosoftEdge);
browserSite.setMergeType(BrowserSiteMergeType.Default);
browserSite.setCompatibilityMode(BrowserSiteCompatibilityMode.Default);
browserSite.setAllowRedirect(false);
browserSite.setComment("Updating to Edge.");
BrowserSite result = graphClient.admin().edge().internetExplorerMode().siteLists().byBrowserSiteListId("{browserSiteList-id}").sites().byBrowserSiteId("{browserSite-id}").patch(browserSite);


```