---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();

graphClient.deviceManagement().detectedApps("{detectedAppId}").managedDevices("{managedDeviceId}").users()
	.buildRequest()
	.post(user);

```