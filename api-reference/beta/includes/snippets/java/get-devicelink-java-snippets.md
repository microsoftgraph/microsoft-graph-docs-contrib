---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceLink deviceLink = graphClient.networkAccess().connectivity().branches("{branchSiteId}").deviceLinks("{deviceLinkId}")
	.buildRequest()
	.get();

```