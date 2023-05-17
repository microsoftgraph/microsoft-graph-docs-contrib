---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Subscription();
$requestBody->setChangeType('created');

$requestBody->setNotificationUrl('https://webhook.azurewebsites.net/api/send/myNotifyClient');

$requestBody->setResource('me/mailfolders(\'Drafts\')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq \'High\'');

$requestBody->setExpirationDateTime(new DateTime('2022-01-01T21:42:18.2257768+00:00'));

$requestBody->setClientState('secretClientValue');

$requestBody->setIncludeResourceData(true);

$requestBody->setEncryptionCertificate('MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==');

$requestBody->setEncryptionCertificateId('testCertificateId');



$result = $graphServiceClient->subscriptions()->post($requestBody);


```