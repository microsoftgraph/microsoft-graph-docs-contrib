---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssignPostRequestBody;
use Microsoft\Graph\Generated\Models\ManagedEBookAssignment;
use Microsoft\Graph\Generated\Models\AllLicensedUsersAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$managedEBookAssignmentsManagedEBookAssignment1 = new ManagedEBookAssignment();
$managedEBookAssignmentsManagedEBookAssignment1->setOdataType('#microsoft.graph.managedEBookAssignment');
$managedEBookAssignmentsManagedEBookAssignment1->setId('ae8b0d27-0d27-ae8b-270d-8bae270d8bae');
$managedEBookAssignmentsManagedEBookAssignment1Target = new AllLicensedUsersAssignmentTarget();
$managedEBookAssignmentsManagedEBookAssignment1Target->setOdataType('microsoft.graph.allLicensedUsersAssignmentTarget');
$managedEBookAssignmentsManagedEBookAssignment1->setTarget($managedEBookAssignmentsManagedEBookAssignment1Target);
$managedEBookAssignmentsManagedEBookAssignment1->setInstallIntent(new InstallIntent('required'));
$managedEBookAssignmentsArray []= $managedEBookAssignmentsManagedEBookAssignment1;
$requestBody->setManagedEBookAssignments($managedEBookAssignmentsArray);


$graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->assign()->post($requestBody)->wait();

```