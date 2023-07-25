---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MobileAppAssignment();
$requestBody->set@odatatype('#microsoft.graph.mobileAppAssignment');

$requestBody->setIntent(new InstallIntent('required'));

$target = new AllLicensedUsersAssignmentTarget();
$target->set@odatatype('microsoft.graph.allLicensedUsersAssignmentTarget');


$requestBody->setTarget($target);
$settings = new WindowsUniversalAppXAppAssignmentSettings();
$settings->set@odatatype('microsoft.graph.windowsUniversalAppXAppAssignmentSettings');

$settings->setUseDeviceContext(true);


$requestBody->setSettings($settings);


$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->assignments()->post($requestBody);


```