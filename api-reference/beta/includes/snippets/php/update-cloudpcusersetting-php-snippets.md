---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcUserSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcUserSetting');
$requestBody->setDisplayName('Example');
$requestBody->setSelfServiceEnabled(true);
$restorePointSetting = new CloudPcRestorePointSetting();
$restorePointSetting->setFrequencyInHours(16);
$restorePointSetting->setFrequencyType(new CloudPcRestorePointFrequencyType('sixteenHours'));
$restorePointSetting->setUserRestoreEnabled(true);
$requestBody->setRestorePointSetting($restorePointSetting);
$requestBody->setLocalAdminEnabled(false);
$requestBody->setResetEnabled(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->patch($requestBody)->wait();

```