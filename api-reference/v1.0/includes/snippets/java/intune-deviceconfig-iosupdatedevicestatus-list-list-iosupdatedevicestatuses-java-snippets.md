---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosUpdateDeviceStatusCollectionPage iosUpdateStatuses = graphClient.deviceManagement().iosUpdateStatuses()
	.buildRequest()
	.get();

```