---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String string = graphClient.deviceManagement().applePushNotificationCertificate()
	.downloadApplePushNotificationCertificateSigningRequest()
	.buildRequest()
	.get();

```