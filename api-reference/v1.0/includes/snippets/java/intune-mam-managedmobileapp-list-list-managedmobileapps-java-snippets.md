---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedMobileAppCollectionPage apps = graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").apps()
	.buildRequest()
	.get();

```