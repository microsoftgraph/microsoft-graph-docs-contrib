---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IosVppEBookAssignment;
use Microsoft\Graph\Generated\Models\DeviceAndAppManagementAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosVppEBookAssignment();
$requestBody->setOdataType('#microsoft.graph.iosVppEBookAssignment');
$target = new DeviceAndAppManagementAssignmentTarget();
$target->setOdataType('microsoft.graph.deviceAndAppManagementAssignmentTarget');
$requestBody->setTarget($target);
$requestBody->setInstallIntent(new InstallIntent('required'));

$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->assignments()->post($requestBody)->wait();

```