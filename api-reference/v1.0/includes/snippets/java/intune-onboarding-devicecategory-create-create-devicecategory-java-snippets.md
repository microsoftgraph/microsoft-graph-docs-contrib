---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCategory deviceCategory = new DeviceCategory();
deviceCategory.displayName = "Display Name value";
deviceCategory.description = "Description value";

graphClient.deviceManagement().deviceCategories()
	.buildRequest()
	.post(deviceCategory);

```