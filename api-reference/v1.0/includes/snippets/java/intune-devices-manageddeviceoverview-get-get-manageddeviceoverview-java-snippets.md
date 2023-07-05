---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceOverview managedDeviceOverview = graphClient.deviceManagement().managedDeviceOverview()
	.buildRequest()
	.get();

```