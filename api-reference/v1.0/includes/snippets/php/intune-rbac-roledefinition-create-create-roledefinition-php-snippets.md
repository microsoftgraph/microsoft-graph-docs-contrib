---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RoleDefinition;
use Microsoft\Graph\Generated\Models\RolePermission;
use Microsoft\Graph\Generated\Models\ResourceAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RoleDefinition();
$requestBody->setOdataType('#microsoft.graph.roleDefinition');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');
$rolePermissionsRolePermission1 = new RolePermission();
$rolePermissionsRolePermission1->setOdataType('microsoft.graph.rolePermission');
$resourceActionsResourceAction1 = new ResourceAction();
$resourceActionsResourceAction1->setOdataType('microsoft.graph.resourceAction');
$resourceActionsResourceAction1->setAllowedResourceActions(['Allowed Resource Actions value', 	]);
$resourceActionsResourceAction1->setNotAllowedResourceActions(['Not Allowed Resource Actions value', 	]);
$resourceActionsArray []= $resourceActionsResourceAction1;
$rolePermissionsRolePermission1->setResourceActions($resourceActionsArray);

$rolePermissionsArray []= $rolePermissionsRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);

$requestBody->setIsBuiltIn(true);

$result = $graphServiceClient->deviceManagement()->roleDefinitions()->post($requestBody)->wait();

```