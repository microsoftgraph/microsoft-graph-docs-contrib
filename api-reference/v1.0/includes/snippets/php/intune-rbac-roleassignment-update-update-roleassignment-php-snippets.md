---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RoleAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RoleAssignment();
$requestBody->setOdataType('#microsoft.graph.roleAssignment');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');
$requestBody->setResourceScopes(['Resource Scopes value', 	]);

$result = $graphServiceClient->deviceManagement()->roleDefinitions()->byRoleDefinitionId('roleDefinition-id')->roleAssignments()->byRoleAssignmentId('roleAssignment-id')->patch($requestBody)->wait();

```