---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BrowserSharedCookie browserSharedCookie = new BrowserSharedCookie();
browserSharedCookie.setOdataType("#microsoft.graph.browserSharedCookie");
browserSharedCookie.setHostOrDomain("www.microsoft.com");
browserSharedCookie.setSourceEnvironment(BrowserSharedCookieSourceEnvironment.InternetExplorer11);
browserSharedCookie.setDisplayName("Microsoft Cookie");
browserSharedCookie.setHostOnly(true);
browserSharedCookie.setComment("A cookie for microsoft.com");
browserSharedCookie.setPath("/");
BrowserSharedCookie result = graphClient.admin().edge().internetExplorerMode().siteLists().byBrowserSiteListId("{browserSiteList-id}").sharedCookies().post(browserSharedCookie);


```