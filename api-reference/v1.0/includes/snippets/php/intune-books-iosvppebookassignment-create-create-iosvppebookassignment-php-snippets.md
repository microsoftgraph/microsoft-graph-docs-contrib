---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IosVppEBookAssignment();
$requestBody->set@odatatype('#microsoft.graph.iosVppEBookAssignment');

$target = new DeviceAndAppManagementAssignmentTarget();
$target->set@odatatype('microsoft.graph.deviceAndAppManagementAssignmentTarget');


$requestBody->setTarget($target);
$requestBody->setInstallIntent(new InstallIntent('required'));



$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->assignments()->post($requestBody);


```