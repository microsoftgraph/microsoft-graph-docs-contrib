---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceAppManagement deviceAppManagement = graphClient.deviceAppManagement()
	.buildRequest()
	.get();

```