---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DetectedApp detectedApp = new DetectedApp();
detectedApp.setOdataType("#microsoft.graph.detectedApp");
detectedApp.setDisplayName("Display Name value");
detectedApp.setVersion("Version value");
detectedApp.setSizeInByte(10L);
detectedApp.setDeviceCount(11);
detectedApp.setPublisher("Publisher value");
detectedApp.setPlatform(DetectedAppPlatformType.Windows);
DetectedApp result = graphClient.deviceManagement().detectedApps().byDetectedAppId("{detectedApp-id}").patch(detectedApp);


```