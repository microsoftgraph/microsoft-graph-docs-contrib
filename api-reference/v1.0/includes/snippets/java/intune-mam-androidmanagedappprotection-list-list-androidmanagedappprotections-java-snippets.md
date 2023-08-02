---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidManagedAppProtectionCollectionPage androidManagedAppProtections = graphClient.deviceAppManagement().androidManagedAppProtections()
	.buildRequest()
	.get();

```