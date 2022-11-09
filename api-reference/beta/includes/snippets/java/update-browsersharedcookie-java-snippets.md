---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSharedCookie browserSharedCookie = new BrowserSharedCookie();
browserSharedCookie.hostOrDomain = "www.microsoft.com";
browserSharedCookie.sourceEnvironment = BrowserSharedCookieSourceEnvironment.MICROSOFT_EDGE;
browserSharedCookie.displayName = "Microsoft Cookie";
browserSharedCookie.path = "/";
browserSharedCookie.hostOnly = true;
browserSharedCookie.comment = "Updating source environment.";

graphClient.admin().edge().internetExplorerMode().siteLists("20579923-e6c8-425a-b728-47f43c10bc05").sharedCookies("972a5778-df43-45fd-9c2a-5dd944c7a1ce")
	.buildRequest()
	.patch(browserSharedCookie);

```