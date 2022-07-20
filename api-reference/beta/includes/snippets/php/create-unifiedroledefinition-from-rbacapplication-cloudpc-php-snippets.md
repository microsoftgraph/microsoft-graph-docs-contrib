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
$additionalData = [
'allowedResourceActions' => ['Microsoft.CloudPC/CloudPCs/Read', ],
];
$rolePermissionsUnifiedRolePermission1->setAdditionalData($additionalData);



$rolePermissionsArray []= $rolePermissionsUnifiedRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);


$additionalData = [
'condition' => 'null', 
];
$requestBody->setAdditionalData($additionalData);




$requestResult = $graphServiceClient->roleManagement()->cloudPC()->roleDefinitions()->post($requestBody);


```