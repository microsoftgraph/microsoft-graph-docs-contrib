---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosManagedAppProtectionCollectionPage iosManagedAppProtections = graphClient.deviceAppManagement().iosManagedAppProtections()
	.buildRequest()
	.get();

```