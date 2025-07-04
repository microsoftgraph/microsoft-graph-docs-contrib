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
$requestBody->setDisplayName('Token 1');
$requestBody->setSerialNumber('TOTP123456');
$requestBody->setManufacturer('Contoso');
$requestBody->setModel('Hardware Token 1000');
$requestBody->setSecretKey('6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB');
$requestBody->setTimeIntervalInSeconds(30);
$requestBody->setHashFunction(new HardwareOathTokenHashFunction('hmacsha1'));

$result = $graphServiceClient->directory()->authenticationMethodDevices()->hardwareOathDevices()->post($requestBody)->wait();

```