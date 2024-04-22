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
$requestBody->setDescription('Update basic properties of application registrations');
$requestBody->setDisplayName('Application Registration Support Administrator');
$rolePermissionsUnifiedRolePermission1 = new UnifiedRolePermission();
$rolePermissionsUnifiedRolePermission1->setAllowedResourceActions(['microsoft.directory/applications/basic/read', 	]);
$rolePermissionsArray []= $rolePermissionsUnifiedRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);

$requestBody->setIsEnabled(true);

$result = $graphServiceClient->roleManagement()->directory()->roleDefinitions()->post($requestBody)->wait();

```