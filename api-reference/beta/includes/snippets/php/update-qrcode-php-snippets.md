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
$requestBody->setExpireDateTime(new \DateTime('2025-12-01T12:00:00Z'));

$result = $graphServiceClient->me()->authentication()->qrCodePinMethod()->standardQRCode()->patch($requestBody)->wait();

```