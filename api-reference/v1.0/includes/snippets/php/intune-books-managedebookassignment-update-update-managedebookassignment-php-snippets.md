---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ManagedEBookAssignment;
use Microsoft\Graph\Generated\Models\AllLicensedUsersAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManagedEBookAssignment();
$requestBody->setOdataType('#microsoft.graph.managedEBookAssignment');
$target = new AllLicensedUsersAssignmentTarget();
$target->setOdataType('microsoft.graph.allLicensedUsersAssignmentTarget');
$requestBody->setTarget($target);
$requestBody->setInstallIntent(new InstallIntent('required'));

$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->assignments()->byManagedEBookAssignmentId('managedEBookAssignment-id')->patch($requestBody)->wait();

```