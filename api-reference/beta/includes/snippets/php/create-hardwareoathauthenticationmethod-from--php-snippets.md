---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\HardwareOathAuthenticationMethod;
use Microsoft\Graph\Beta\Generated\Models\HardwareOathTokenAuthenticationMethodDevice;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new HardwareOathAuthenticationMethod();
$device = new HardwareOathTokenAuthenticationMethodDevice();
$device->setId('aad49556-####-####-####-############');
$requestBody->setDevice($device);

$result = $graphServiceClient->me()->authentication()->hardwareOathMethods()->post($requestBody)->wait();

```