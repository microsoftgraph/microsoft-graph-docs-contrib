---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCategory deviceCategory = graphClient.deviceManagement().detectedApps("{detectedAppId}").managedDevices("{managedDeviceId}").deviceCategory()
	.buildRequest()
	.get();

```