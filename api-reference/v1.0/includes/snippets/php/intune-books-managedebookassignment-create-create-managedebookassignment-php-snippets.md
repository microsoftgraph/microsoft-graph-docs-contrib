---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ManagedEBookAssignment();
$requestBody->set@odatatype('#microsoft.graph.managedEBookAssignment');

$target = new AllLicensedUsersAssignmentTarget();
$target->set@odatatype('microsoft.graph.allLicensedUsersAssignmentTarget');


$requestBody->setTarget($target);
$requestBody->setInstallIntent(new InstallIntent('required'));



$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->assignments()->post($requestBody);


```