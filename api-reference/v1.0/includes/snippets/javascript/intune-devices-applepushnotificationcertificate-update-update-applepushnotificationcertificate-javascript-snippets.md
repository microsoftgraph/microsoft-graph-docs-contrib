---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applePushNotificationCertificate = {
  '@odata.type': '#microsoft.graph.applePushNotificationCertificate',
  appleIdentifier: 'Apple Identifier value',
  topicIdentifier: 'Topic Identifier value',
  expirationDateTime: '2016-12-31T23:57:57.2481234-08:00',
  certificateUploadStatus: 'Certificate Upload Status value',
  certificateUploadFailureReason: 'Certificate Upload Failure Reason value',
  certificateSerialNumber: 'Certificate Serial Number value',
  certificate: 'Certificate value'
};

await client.api('/deviceManagement/applePushNotificationCertificate')
	.update(applePushNotificationCertificate);

```