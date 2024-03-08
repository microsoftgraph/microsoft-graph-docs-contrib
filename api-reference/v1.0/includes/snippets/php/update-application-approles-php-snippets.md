---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$appRolesAppRole1 = new AppRole();
$appRolesAppRole1->setAllowedMemberTypes(['User', 'Application', 	]);
$appRolesAppRole1->setDescription('Survey.Read');
$appRolesAppRole1->setDisplayName('Survey.Read');
$appRolesAppRole1->setId('ebb7c86c-fb47-4e3f-8191-420ff1b9de4a');
$appRolesAppRole1->setIsEnabled(false);
$appRolesAppRole1->setOrigin('Application');
$appRolesAppRole1->setValue('Survey.Read');
$appRolesArray []= $appRolesAppRole1;
$requestBody->setAppRoles($appRolesArray);


$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```