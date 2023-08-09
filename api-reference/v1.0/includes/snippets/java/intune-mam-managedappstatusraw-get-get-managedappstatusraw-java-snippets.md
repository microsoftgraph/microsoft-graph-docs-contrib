---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppStatus managedAppStatus = graphClient.deviceAppManagement().managedAppStatuses("{managedAppStatusId}")
	.buildRequest()
	.get();

```