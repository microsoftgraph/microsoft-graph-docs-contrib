---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCollectionWithReferencesPage users = graphClient.deviceManagement().detectedApps("{detectedAppId}").managedDevices("{managedDeviceId}").users()
	.buildRequest()
	.get();

```