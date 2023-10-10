---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppStatusCollectionPage managedAppStatuses = graphClient.deviceAppManagement().managedAppStatuses()
	.buildRequest()
	.get();

```