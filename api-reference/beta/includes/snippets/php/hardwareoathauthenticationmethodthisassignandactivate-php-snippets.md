---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Authentication\HardwareOathMethods\AssignAndActivate\AssignAndActivatePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\HardwareOathTokenAuthenticationMethodDevice;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignAndActivatePostRequestBody();
$device = new HardwareOathTokenAuthenticationMethodDevice();
$device->setId('aad49556-####-####-####-############');
$requestBody->setDevice($device);
$requestBody->setVerificationCode('588651');
$requestBody->setDisplayName('Amy Masters Token');

$graphServiceClient->me()->authentication()->hardwareOathMethods()->assignAndActivate()->post($requestBody)->wait();

```