---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplePushNotificationCertificate applePushNotificationCertificate = new ApplePushNotificationCertificate();
applePushNotificationCertificate.appleIdentifier = "Apple Identifier value";
applePushNotificationCertificate.topicIdentifier = "Topic Identifier value";
applePushNotificationCertificate.expirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:57.2481234+00:00");
applePushNotificationCertificate.certificateUploadStatus = "Certificate Upload Status value";
applePushNotificationCertificate.certificateUploadFailureReason = "Certificate Upload Failure Reason value";
applePushNotificationCertificate.certificateSerialNumber = "Certificate Serial Number value";
applePushNotificationCertificate.certificate = "Certificate value";

graphClient.deviceManagement().applePushNotificationCertificate()
	.buildRequest()
	.patch(applePushNotificationCertificate);

```