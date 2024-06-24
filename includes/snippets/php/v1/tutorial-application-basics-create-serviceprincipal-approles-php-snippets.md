---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Application;
use Microsoft\Graph\Generated\Models\AppRole;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$appRolesAppRole1 = new AppRole();
$appRolesAppRole1->setAllowedMemberTypes(['User', 'Application', 	]);
$appRolesAppRole1->setDescription('Survey.Read');
$appRolesAppRole1->setDisplayName('Survey.Read');
$appRolesAppRole1->setId('7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0');
$appRolesAppRole1->setIsEnabled(false);
$appRolesAppRole1->setOrigin('Application');
$appRolesAppRole1->setValue('Survey.Read');
$appRolesArray []= $appRolesAppRole1;
$requestBody->setAppRoles($appRolesArray);


$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```