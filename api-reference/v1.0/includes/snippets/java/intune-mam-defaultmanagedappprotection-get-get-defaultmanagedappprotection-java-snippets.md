---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DefaultManagedAppProtection defaultManagedAppProtection = graphClient.deviceAppManagement().defaultManagedAppProtections("{defaultManagedAppProtectionId}")
	.buildRequest()
	.get();

```