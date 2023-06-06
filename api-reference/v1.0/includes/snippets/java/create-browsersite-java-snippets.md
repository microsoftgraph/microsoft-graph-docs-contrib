---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSite browserSite = new BrowserSite();
browserSite.webUrl = "www.microsoft.com";
browserSite.targetEnvironment = BrowserSiteTargetEnvironment.INTERNET_EXPLORER11;
browserSite.comment = "A site that opens in InternetExplorer11";
browserSite.mergeType = BrowserSiteMergeType.DEFAULT;
browserSite.compatibilityMode = BrowserSiteCompatibilityMode.DEFAULT;
browserSite.allowRedirect = true;

graphClient.admin().edge().internetExplorerMode().siteLists("e370d818-f650-5ab1-499e-5915e83f4573").sites()
	.buildRequest()
	.post(browserSite);

```