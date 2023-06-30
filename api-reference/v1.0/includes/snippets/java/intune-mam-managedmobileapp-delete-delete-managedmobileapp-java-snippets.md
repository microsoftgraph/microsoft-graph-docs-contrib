---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").apps("{managedMobileAppId}")
	.buildRequest()
	.delete();

```