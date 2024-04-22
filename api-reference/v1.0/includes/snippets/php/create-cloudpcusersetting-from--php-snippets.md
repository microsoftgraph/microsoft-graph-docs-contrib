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
$requestBody->setLocalAdminEnabled(true);
$restorePointSetting = new CloudPcRestorePointSetting();
$restorePointSetting->setFrequencyType(new CloudPcRestorePointFrequencyType('sixteenHours'));
$restorePointSetting->setUserRestoreEnabled(true);
$requestBody->setRestorePointSetting($restorePointSetting);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->post($requestBody)->wait();

```