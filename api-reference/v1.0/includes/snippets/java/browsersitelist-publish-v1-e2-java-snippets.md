---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String revision = "1.0";

LinkedList<BrowserSite> sitesList = new LinkedList<BrowserSite>();
BrowserSite sites = new BrowserSite();
sites.id = "53e5f971-fc7b-4cd3-a1bf-34d7c0416882";

sitesList.add(sites);
BrowserSite sites1 = new BrowserSite();
sites1.id = "2e27cc86-3662-447e-b751-274fb9f869ea";

sitesList.add(sites1);
BrowserSiteCollectionResponse browserSiteCollectionResponse = new BrowserSiteCollectionResponse();
browserSiteCollectionResponse.value = sitesList;
BrowserSiteCollectionPage browserSiteCollectionPage = new BrowserSiteCollectionPage(browserSiteCollectionResponse, null);

LinkedList<BrowserSharedCookie> sharedCookiesList = new LinkedList<BrowserSharedCookie>();
BrowserSharedCookie sharedCookies = new BrowserSharedCookie();
sharedCookies.id = "7f639835-23ab-4793-b1e6-1a06fad127a2";

sharedCookiesList.add(sharedCookies);
BrowserSharedCookieCollectionResponse browserSharedCookieCollectionResponse = new BrowserSharedCookieCollectionResponse();
browserSharedCookieCollectionResponse.value = sharedCookiesList;
BrowserSharedCookieCollectionPage browserSharedCookieCollectionPage = new BrowserSharedCookieCollectionPage(browserSharedCookieCollectionResponse, null);

graphClient.admin().edge().internetExplorerMode().siteLists("36ba61eb-c492-4283-a38b-963a1dbb2f69")
	.publish(BrowserSiteListPublishParameterSet
		.newBuilder()
		.withRevision(revision)
		.withSites(sitesList)
		.withSharedCookies(sharedCookiesList)
		.build())
	.buildRequest()
	.post();

```