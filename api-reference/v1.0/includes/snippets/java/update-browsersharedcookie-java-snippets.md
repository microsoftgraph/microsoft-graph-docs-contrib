---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BrowserSharedCookie browserSharedCookie = new BrowserSharedCookie();
browserSharedCookie.setHostOrDomain("www.microsoft.com");
browserSharedCookie.setSourceEnvironment(BrowserSharedCookieSourceEnvironment.MicrosoftEdge);
browserSharedCookie.setDisplayName("Microsoft Cookie");
browserSharedCookie.setPath("/");
browserSharedCookie.setHostOnly(true);
browserSharedCookie.setComment("Updating source environment.");
BrowserSharedCookie result = graphClient.admin().edge().internetExplorerMode().siteLists().byBrowserSiteListId("{browserSiteList-id}").sharedCookies().byBrowserSharedCookieId("{browserSharedCookie-id}").patch(browserSharedCookie);


```