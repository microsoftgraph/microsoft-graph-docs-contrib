---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSiteListCollectionPage siteLists = graphClient.admin().edge().internetExplorerMode().siteLists()
	.buildRequest()
	.get();

```