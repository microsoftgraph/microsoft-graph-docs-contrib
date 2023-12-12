---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DefaultManagedAppProtectionCollectionPage defaultManagedAppProtections = graphClient.deviceAppManagement().defaultManagedAppProtections()
	.buildRequest()
	.get();

```