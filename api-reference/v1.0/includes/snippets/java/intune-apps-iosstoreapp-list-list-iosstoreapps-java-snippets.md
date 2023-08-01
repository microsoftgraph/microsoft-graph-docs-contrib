---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppCollectionPage mobileApps = graphClient.deviceAppManagement().mobileApps()
	.buildRequest()
	.get();

```