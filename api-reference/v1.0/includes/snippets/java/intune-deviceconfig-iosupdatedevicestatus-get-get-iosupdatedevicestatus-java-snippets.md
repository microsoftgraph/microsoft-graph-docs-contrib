---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosUpdateDeviceStatus iosUpdateDeviceStatus = graphClient.deviceManagement().iosUpdateStatuses("{iosUpdateDeviceStatusId}")
	.buildRequest()
	.get();

```