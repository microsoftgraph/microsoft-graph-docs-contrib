---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Subscription;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Subscription();
$requestBody->setChangeType('created,updated');
$requestBody->setNotificationUrl('https://webhook.azurewebsites.net/api/resourceNotifications');
$requestBody->setResource('/teams/{id}/channels/{id}/messages');
$requestBody->setIncludeResourceData(true);
$requestBody->setEncryptionCertificate('{base64encodedCertificate}');
$requestBody->setEncryptionCertificateId('{customId}');
$requestBody->setExpirationDateTime(new \DateTime('2019-09-19T11:00:00.0000000Z'));
$requestBody->setClientState('{secretClientState}');

$result = $graphServiceClient->subscriptions()->post($requestBody)->wait();

```