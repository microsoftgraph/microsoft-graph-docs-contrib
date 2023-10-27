---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedMobileApp managedMobileApp = graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").apps("{managedMobileAppId}")
	.buildRequest()
	.get();

```