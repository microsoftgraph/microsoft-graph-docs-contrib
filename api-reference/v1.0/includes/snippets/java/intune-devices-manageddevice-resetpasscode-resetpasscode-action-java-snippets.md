---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().managedDevices("{managedDeviceId}")
	.resetPasscode()
	.buildRequest()
	.post();

```