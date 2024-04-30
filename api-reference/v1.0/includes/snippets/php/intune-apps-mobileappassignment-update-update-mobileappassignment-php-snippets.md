---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MobileAppAssignment;
use Microsoft\Graph\Generated\Models\AllLicensedUsersAssignmentTarget;
use Microsoft\Graph\Generated\Models\WindowsUniversalAppXAppAssignmentSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobileAppAssignment();
$requestBody->setOdataType('#microsoft.graph.mobileAppAssignment');
$requestBody->setIntent(new InstallIntent('required'));
$target = new AllLicensedUsersAssignmentTarget();
$target->setOdataType('microsoft.graph.allLicensedUsersAssignmentTarget');
$requestBody->setTarget($target);
$settings = new WindowsUniversalAppXAppAssignmentSettings();
$settings->setOdataType('microsoft.graph.windowsUniversalAppXAppAssignmentSettings');
$settings->setUseDeviceContext(true);
$requestBody->setSettings($settings);

$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->assignments()->byMobileAppAssignmentId('mobileAppAssignment-id')->patch($requestBody)->wait();

```