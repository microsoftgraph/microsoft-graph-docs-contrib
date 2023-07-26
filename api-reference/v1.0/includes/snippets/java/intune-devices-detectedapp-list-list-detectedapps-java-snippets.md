---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DetectedAppCollectionPage detectedApps = graphClient.deviceManagement().detectedApps()
	.buildRequest()
	.get();

```