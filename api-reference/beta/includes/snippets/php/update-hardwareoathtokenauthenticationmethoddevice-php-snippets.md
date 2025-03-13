---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\HardwareOathTokenAuthenticationMethodDevice;
use Microsoft\Graph\Beta\Generated\Models\HardwareOathTokenHashFunction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new HardwareOathTokenAuthenticationMethodDevice();
$requestBody->setHashFunction(new HardwareOathTokenHashFunction('hmacsha256'));

$result = $graphServiceClient->directory()->authenticationMethodDevices()->hardwareOathDevices()->byHardwareOathTokenAuthenticationMethodDeviceId('hardwareOathTokenAuthenticationMethodDevice-id')->patch($requestBody)->wait();

```