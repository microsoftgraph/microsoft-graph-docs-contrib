---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ApplePushNotificationCertificate();
$requestBody->set@odatatype('#microsoft.graph.applePushNotificationCertificate');

$requestBody->setAppleIdentifier('Apple Identifier value');

$requestBody->setTopicIdentifier('Topic Identifier value');

$requestBody->setExpirationDateTime(new DateTime('2016-12-31T23:57:57.2481234-08:00'));

$requestBody->setCertificateUploadStatus('Certificate Upload Status value');

$requestBody->setCertificateUploadFailureReason('Certificate Upload Failure Reason value');

$requestBody->setCertificateSerialNumber('Certificate Serial Number value');

$requestBody->setCertificate('Certificate value');



$result = $graphServiceClient->deviceManagement()->applePushNotificationCertificate()->patch($requestBody);


```