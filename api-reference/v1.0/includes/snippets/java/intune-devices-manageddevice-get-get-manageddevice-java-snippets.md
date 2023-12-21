---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDevice managedDevice = graphClient.deviceManagement().managedDevices("{managedDeviceId}")
	.buildRequest()
	.get();

```