---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceLink deviceLink = new DeviceLink();
deviceLink.name = "Backup Link";

graphClient.networkAccess().connectivity().branches("{branchSiteId}").deviceLinks("{deviceLinkId}")
	.buildRequest()
	.patch(deviceLink);

```