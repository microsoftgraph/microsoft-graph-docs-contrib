---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidManagedAppProtection androidManagedAppProtection = graphClient.deviceAppManagement().androidManagedAppProtections("{androidManagedAppProtectionId}")
	.buildRequest()
	.get();

```