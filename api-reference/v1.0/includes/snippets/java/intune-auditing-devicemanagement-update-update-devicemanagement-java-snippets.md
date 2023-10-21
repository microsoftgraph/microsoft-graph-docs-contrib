---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagement deviceManagement = new DeviceManagement();

graphClient.deviceManagement()
	.buildRequest()
	.patch(deviceManagement);

```