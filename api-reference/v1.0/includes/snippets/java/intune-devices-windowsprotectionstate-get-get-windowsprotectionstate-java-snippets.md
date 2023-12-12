---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsProtectionState windowsProtectionState = graphClient.deviceManagement().detectedApps("{detectedAppId}").managedDevices("{managedDeviceId}").windowsProtectionState()
	.buildRequest()
	.get();

```