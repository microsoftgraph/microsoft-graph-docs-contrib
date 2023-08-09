---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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



$result = $graphServiceClient->deviceManagement()->patch($requestBody);


```