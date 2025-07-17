---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Authentication\HardwareOathMethods\Item\Activate\ActivatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivatePostRequestBody();
$requestBody->setVerificationCode('588651');
$requestBody->setDisplayName('Amy Masters Token');

$graphServiceClient->me()->authentication()->hardwareOathMethods()->byHardwareOathAuthenticationMethodId('hardwareOathAuthenticationMethod-id')->activate()->post($requestBody)->wait();

```