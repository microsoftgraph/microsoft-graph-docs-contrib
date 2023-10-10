---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileApp mobileApp = graphClient.deviceAppManagement().mobileApps("{mobileAppId}")
	.buildRequest()
	.get();

```