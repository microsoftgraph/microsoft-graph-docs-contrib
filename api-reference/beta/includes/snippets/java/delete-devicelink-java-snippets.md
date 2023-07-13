---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.networkAccess().connectivity().branches("{branchSiteId}").deviceLinks("{deviceLinkId}")
	.buildRequest()
	.delete();

```