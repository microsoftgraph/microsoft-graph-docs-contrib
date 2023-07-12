---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceLinkCollectionPage deviceLinks = graphClient.networkAccess().connectivity().branches("{branchSiteId}").deviceLinks()
	.buildRequest()
	.get();

```