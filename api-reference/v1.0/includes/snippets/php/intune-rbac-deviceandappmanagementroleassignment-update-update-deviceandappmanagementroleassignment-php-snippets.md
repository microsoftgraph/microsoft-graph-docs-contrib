---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceAndAppManagementRoleAssignment();
$requestBody->setOdataType('#microsoft.graph.deviceAndAppManagementRoleAssignment');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');
$requestBody->setResourceScopes(['Resource Scopes value', 	]);
$requestBody->setMembers(['Members value', 	]);

$result = $graphServiceClient->deviceManagement()->roleAssignments()->byDeviceAndAppManagementRoleAssignmentId('deviceAndAppManagementRoleAssignment-id')->patch($requestBody)->wait();

```