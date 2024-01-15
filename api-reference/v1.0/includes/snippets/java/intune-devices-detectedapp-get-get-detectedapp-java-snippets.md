---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DetectedApp detectedApp = graphClient.deviceManagement().detectedApps("{detectedAppId}")
	.buildRequest()
	.get();

```