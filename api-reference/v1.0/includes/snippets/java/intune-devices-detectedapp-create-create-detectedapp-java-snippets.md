---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DetectedApp detectedApp = new DetectedApp();
detectedApp.displayName = "Display Name value";
detectedApp.version = "Version value";
detectedApp.sizeInByte = 10L;
detectedApp.deviceCount = 11;
detectedApp.publisher = "Publisher value";
detectedApp.platform = DetectedAppPlatformType.WINDOWS;

graphClient.deviceManagement().detectedApps()
	.buildRequest()
	.post(detectedApp);

```