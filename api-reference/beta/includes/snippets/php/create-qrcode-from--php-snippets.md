---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\QrCode;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new QrCode();
$requestBody->setOdataType('#microsoft.graph.qrCode');
$requestBody->setExpireDateTime(new \DateTime('2025-12-19T12:00:00Z'));
$requestBody->setStartDateTime(new \DateTime('2025-01-01T12:00:00Z'));

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->qrCodePinMethod()->standardQRCode()->patch($requestBody)->wait();

```