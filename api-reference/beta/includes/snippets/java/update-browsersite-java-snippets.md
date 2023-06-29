---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSite browserSite = new BrowserSite();
browserSite.webUrl = "www.microsoft.com";
browserSite.targetEnvironment = BrowserSiteTargetEnvironment.MICROSOFT_EDGE;
browserSite.mergeType = BrowserSiteMergeType.DEFAULT;
browserSite.compatibilityMode = BrowserSiteCompatibilityMode.DEFAULT;
browserSite.allowRedirect = false;
browserSite.comment = "Updating to Edge.";

graphClient.admin().edge().internetExplorerMode().siteLists("972a5778-df43-45fd-9c2a-5dd944c7a1ce").sites("7cf831d2-8a9b-4826-b120-911566f6fd6a")
	.buildRequest()
	.patch(browserSite);

```