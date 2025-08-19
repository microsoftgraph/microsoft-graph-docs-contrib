---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnlineMeeting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnlineMeeting();
$requestBody->setStartDateTime(new \DateTime('2025-02-01T14:30:34.2444915-07:00'));
$requestBody->setEndDateTime(new \DateTime('2025-02-01T15:00:34.2464912-07:00'));
$requestBody->setSubject('Encrypted Meeting');
$requestBody->setIsEndToEndEncryptionEnabled(true);

$result = $graphServiceClient->me()->onlineMeetings()->post($requestBody)->wait();

```