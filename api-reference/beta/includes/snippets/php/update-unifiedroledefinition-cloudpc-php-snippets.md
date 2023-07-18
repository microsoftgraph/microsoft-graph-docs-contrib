---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleDefinition();
$requestBody->setDescription('Update basic properties and permission of application registrations');

$requestBody->setDisplayName('ExampleCustomRole');

$rolePermissionsUnifiedRolePermission1 = new UnifiedRolePermission();
$rolePermissionsUnifiedRolePermission1->setAllowedResourceActions(['Microsoft.CloudPC/CloudPCs/Read', 'Microsoft.CloudPC/CloudPCs/Reprovision', 	]);


$rolePermissionsArray []= $rolePermissionsUnifiedRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);




$result = $graphServiceClient->roleManagement()->cloudPC()->roleDefinitions()->byUnifiedRoleDefinitionId('unifiedRoleDefinition-id')->patch($requestBody);


```