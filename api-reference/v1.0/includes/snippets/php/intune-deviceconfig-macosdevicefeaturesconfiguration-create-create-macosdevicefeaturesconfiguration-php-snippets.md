---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MacOSDeviceFeaturesConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MacOSDeviceFeaturesConfiguration();
$requestBody->setOdataType('#microsoft.graph.macOSDeviceFeaturesConfiguration');
$requestBody->setDescription('Description value');
$requestBody->setDisplayName('Display Name value');
$requestBody->setVersion(7);

$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody)->wait();

```