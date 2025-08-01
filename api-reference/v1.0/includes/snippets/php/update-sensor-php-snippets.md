---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Security\Sensor;
use Microsoft\Graph\Generated\Models\Security\SensorSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Sensor();
$settings = new SensorSettings();
$settings->setDescription('dc1 settings new description');
$settings->setDomainControllerDnsNames(['DC1.domain1.test.local', 	]);
$settings->setIsDelayedDeploymentEnabled(false);
$requestBody->setSettings($settings);

$result = $graphServiceClient->security()->identities()->sensors()->bySensorId('sensor-id')->patch($requestBody)->wait();

```