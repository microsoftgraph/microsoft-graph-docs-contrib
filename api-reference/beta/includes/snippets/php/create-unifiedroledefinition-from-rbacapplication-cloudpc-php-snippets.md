---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleDefinition();
$requestBody->setDescription('An example custom role');

$requestBody->setDisplayName('ExampleCustomRole');

$rolePermissionsUnifiedRolePermission1 = new UnifiedRolePermission();
$rolePermissionsUnifiedRolePermission1->setAllowedResourceActions(['Microsoft.CloudPC/CloudPCs/Read', ]);


$rolePermissionsArray []= $rolePermissionsUnifiedRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);


$additionalData = [
'condition' => 'null', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->roleManagement()->cloudPC()->roleDefinitions()->post($requestBody);


```