---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BrowserSiteList browserSiteList = new BrowserSiteList();
browserSiteList.setDisplayName("Production Site List A");
browserSiteList.setDescription("Production site list for team A");
BrowserSiteList result = graphClient.admin().edge().internetExplorerMode().siteLists().post(browserSiteList);


```