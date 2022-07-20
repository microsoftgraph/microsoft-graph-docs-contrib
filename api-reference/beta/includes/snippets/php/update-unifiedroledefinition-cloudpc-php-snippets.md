---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleDefinition();
$requestBody->setDescription('Update basic properties and permission of application registrations');

$requestBody->setDisplayName('ExampleCustomRole');

$rolePermissionsUnifiedRolePermission1 = new UnifiedRolePermission();
$additionalData = [
'allowedResourceActions' => ['Microsoft.CloudPC/CloudPCs/Read', 'Microsoft.CloudPC/CloudPCs/Reprovision', ],
];
$rolePermissionsUnifiedRolePermission1->setAdditionalData($additionalData);



$rolePermissionsArray []= $rolePermissionsUnifiedRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);




$graphServiceClient->roleManagement()->cloudPC()->roleDefinitionsById('unifiedRoleDefinition-id')->patch($requestBody);


```