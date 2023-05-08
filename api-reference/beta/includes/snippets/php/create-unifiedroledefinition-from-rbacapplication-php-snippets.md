---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleDefinition();
$requestBody->setDescription('Update basic properties of application registrations');

$requestBody->setDisplayName('Application Registration Support Administrator');

$rolePermissionsUnifiedRolePermission1 = new UnifiedRolePermission();
$rolePermissionsUnifiedRolePermission1->setAllowedResourceActions(['microsoft.directory/applications/basic/read', ]);


$rolePermissionsArray []= $rolePermissionsUnifiedRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);


$requestBody->setIsEnabled(true);



$result = $graphServiceClient->roleManagement()->directory()->roleDefinitions()->post($requestBody);


```