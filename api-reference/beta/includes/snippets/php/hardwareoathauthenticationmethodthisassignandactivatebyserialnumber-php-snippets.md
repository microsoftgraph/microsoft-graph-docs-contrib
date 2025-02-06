---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Authentication\HardwareOathMethods\AssignAndActivateBySerialNumber\AssignAndActivateBySerialNumberPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignAndActivateBySerialNumberPostRequestBody();
$requestBody->setVerificationCode('588651');
$requestBody->setSerialNumber('TOTP123456');
$requestBody->setDisplayName('Amy Masters Token');

$graphServiceClient->me()->authentication()->hardwareOathMethods()->assignAndActivateBySerialNumber()->post($requestBody)->wait();

```