---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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


$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->assignments()->byMobileAppAssignmentId('mobileAppAssignment-id')->patch($requestBody);


```