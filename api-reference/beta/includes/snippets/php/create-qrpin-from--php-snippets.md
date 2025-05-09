---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\QrPin;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new QrPin();
$requestBody->setOdataType('#microsoft.graph.qrPin');
$requestBody->setCode('09599786');

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->qrCodePinMethod()->pin()->patch($requestBody)->wait();

```