---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSharedCookie browserSharedCookie = new BrowserSharedCookie();
browserSharedCookie.hostOrDomain = "www.microsoft.com";
browserSharedCookie.sourceEnvironment = BrowserSharedCookieSourceEnvironment.INTERNET_EXPLORER11;
browserSharedCookie.displayName = "Microsoft Cookie";
browserSharedCookie.hostOnly = true;
browserSharedCookie.comment = "A cookie for microsoft.com";
browserSharedCookie.path = "/";

graphClient.admin().edge().internetExplorerMode().siteLists("e370d818-f650-5ab1-499e-5915e83f4573").sharedCookies()
	.buildRequest()
	.post(browserSharedCookie);

```