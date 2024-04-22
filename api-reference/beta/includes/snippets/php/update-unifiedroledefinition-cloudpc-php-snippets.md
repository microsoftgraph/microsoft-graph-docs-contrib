---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedRoleDefinition;
use Microsoft\Graph\Generated\Models\UnifiedRolePermission;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleDefinition();
$requestBody->setDescription('Update basic properties and permission of application registrations');
$requestBody->setDisplayName('ExampleCustomRole');
$rolePermissionsUnifiedRolePermission1 = new UnifiedRolePermission();
$rolePermissionsUnifiedRolePermission1->setAllowedResourceActions(['Microsoft.CloudPC/CloudPCs/Read', 'Microsoft.CloudPC/CloudPCs/Reprovision', 	]);
$rolePermissionsArray []= $rolePermissionsUnifiedRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);


$result = $graphServiceClient->roleManagement()->cloudPC()->roleDefinitions()->byUnifiedRoleDefinitionId('unifiedRoleDefinition-id')->patch($requestBody)->wait();

```