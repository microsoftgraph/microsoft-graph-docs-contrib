---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcUserSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcUserSetting');

$requestBody->setDisplayName('Example');

$requestBody->setSelfServiceEnabled(true);

$restorePointSetting = new CloudPcRestorePointSetting();
$restorePointSetting->setFrequencyInHours(16);

$restorePointSetting->setUserRestoreEnabled(true);


$requestBody->setRestorePointSetting($restorePointSetting);
$requestBody->setLocalAdminEnabled(false);



$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->patch($requestBody);


```