---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RoleAssignment();
$requestBody->setOdataType('#microsoft.graph.roleAssignment');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');
$requestBody->setResourceScopes(['Resource Scopes value', 	]);

$result = $graphServiceClient->deviceManagement()->roleDefinitions()->byRoleDefinitionId('roleDefinition-id')->roleAssignments()->post($requestBody)->wait();

```