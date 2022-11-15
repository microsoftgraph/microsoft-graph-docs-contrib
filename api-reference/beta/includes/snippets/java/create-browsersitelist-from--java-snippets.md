---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSiteList browserSiteList = new BrowserSiteList();
browserSiteList.displayName = "Production Site List A";
browserSiteList.description = "Production site list for team A";

graphClient.admin().edge().internetExplorerMode().siteLists()
	.buildRequest()
	.post(browserSiteList);

```