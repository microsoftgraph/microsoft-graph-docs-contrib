---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSharedCookie browserSharedCookie = graphClient.admin().edge().internetExplorerMode().siteLists("147713b8-4df2-4717-93a3-bfb1ebb54881").sharedCookies("07f4030f-45ff-4ad1-9277-3b8f6ee74141")
	.buildRequest()
	.get();

```