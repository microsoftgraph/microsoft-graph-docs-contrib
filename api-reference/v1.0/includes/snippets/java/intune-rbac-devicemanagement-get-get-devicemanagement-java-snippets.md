---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagement deviceManagement = graphClient.deviceManagement()
	.buildRequest()
	.get();

```