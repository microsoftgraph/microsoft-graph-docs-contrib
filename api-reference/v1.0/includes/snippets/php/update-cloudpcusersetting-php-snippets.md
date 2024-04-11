---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CloudPcUserSetting;
use Microsoft\Graph\Generated\Models\CloudPcRestorePointSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcUserSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcUserSetting');
$requestBody->setDisplayName('Example');
$restorePointSetting = new CloudPcRestorePointSetting();
$restorePointSetting->setFrequencyType(new CloudPcRestorePointFrequencyType('sixteenHours'));
$restorePointSetting->setUserRestoreEnabled(true);
$requestBody->setRestorePointSetting($restorePointSetting);
$requestBody->setLocalAdminEnabled(false);
$requestBody->setResetEnabled(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->patch($requestBody)->wait();

```