---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.edge.internetexplorermode.sitelists.item.publish.PublishPostRequestBody publishPostRequestBody = new com.microsoft.graph.beta.admin.edge.internetexplorermode.sitelists.item.publish.PublishPostRequestBody();
publishPostRequestBody.setRevision("1.0");
LinkedList<BrowserSite> sites = new LinkedList<BrowserSite>();
BrowserSite browserSite = new BrowserSite();
browserSite.setId("53e5f971-fc7b-4cd3-a1bf-34d7c0416882");
sites.add(browserSite);
BrowserSite browserSite1 = new BrowserSite();
browserSite1.setId("2e27cc86-3662-447e-b751-274fb9f869ea");
sites.add(browserSite1);
publishPostRequestBody.setSites(sites);
LinkedList<BrowserSharedCookie> sharedCookies = new LinkedList<BrowserSharedCookie>();
BrowserSharedCookie browserSharedCookie = new BrowserSharedCookie();
browserSharedCookie.setId("7f639835-23ab-4793-b1e6-1a06fad127a2");
sharedCookies.add(browserSharedCookie);
publishPostRequestBody.setSharedCookies(sharedCookies);
var result = graphClient.admin().edge().internetExplorerMode().siteLists().byBrowserSiteListId("{browserSiteList-id}").publish().post(publishPostRequestBody);


```