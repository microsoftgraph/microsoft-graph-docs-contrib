---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceManagement;
use Microsoft\Graph\Generated\Models\DeviceManagementSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagement();
$requestBody->setOdataType('#microsoft.graph.deviceManagement');
$settings = new DeviceManagementSettings();
$settings->setOdataType('microsoft.graph.deviceManagementSettings');
$settings->setDeviceComplianceCheckinThresholdDays(4);
$settings->setIsScheduledActionEnabled(true);
$settings->setSecureByDefault(true);
$requestBody->setSettings($settings);
$requestBody->setIntuneAccountId('cf1549a1-49a1-cf15-a149-15cfa14915cf');

$result = $graphServiceClient->deviceManagement()->patch($requestBody)->wait();

```