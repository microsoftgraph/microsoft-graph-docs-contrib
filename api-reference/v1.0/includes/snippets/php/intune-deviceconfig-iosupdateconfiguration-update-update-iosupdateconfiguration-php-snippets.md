---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosUpdateConfiguration();
$requestBody->setOdataType('#microsoft.graph.iosUpdateConfiguration');
$requestBody->setDescription('Description value');
$requestBody->setDisplayName('Display Name value');
$requestBody->setVersion(7);
$requestBody->setActiveHoursStart(new Time('12:00:05.5020000'));
$requestBody->setActiveHoursEnd(new Time('11:59:00.8990000'));
$requestBody->setScheduledInstallDays([new DayOfWeek('monday'),	]);
$requestBody->setUtcTimeOffsetInMinutes(6);

$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody)->wait();

```