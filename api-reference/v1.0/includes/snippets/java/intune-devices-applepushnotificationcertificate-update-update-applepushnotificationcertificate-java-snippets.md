---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApplePushNotificationCertificate applePushNotificationCertificate = new ApplePushNotificationCertificate();
applePushNotificationCertificate.setOdataType("#microsoft.graph.applePushNotificationCertificate");
applePushNotificationCertificate.setAppleIdentifier("Apple Identifier value");
applePushNotificationCertificate.setTopicIdentifier("Topic Identifier value");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-12-31T23:57:57.2481234-08:00");
applePushNotificationCertificate.setExpirationDateTime(expirationDateTime);
applePushNotificationCertificate.setCertificateUploadStatus("Certificate Upload Status value");
applePushNotificationCertificate.setCertificateUploadFailureReason("Certificate Upload Failure Reason value");
applePushNotificationCertificate.setCertificateSerialNumber("Certificate Serial Number value");
applePushNotificationCertificate.setCertificate("Certificate value");
ApplePushNotificationCertificate result = graphClient.deviceManagement().applePushNotificationCertificate().patch(applePushNotificationCertificate);


```