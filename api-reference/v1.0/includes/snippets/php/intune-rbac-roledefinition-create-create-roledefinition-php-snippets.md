---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RoleDefinition();
$requestBody->set@odatatype('#microsoft.graph.roleDefinition');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$rolePermissionsRolePermission1 = new RolePermission();
$rolePermissionsRolePermission1->set@odatatype('microsoft.graph.rolePermission');

$resourceActionsResourceAction1 = new ResourceAction();
$resourceActionsResourceAction1->set@odatatype('microsoft.graph.resourceAction');

$resourceActionsResourceAction1->setAllowedResourceActions(['Allowed Resource Actions value', ]);

$resourceActionsResourceAction1->setNotAllowedResourceActions(['Not Allowed Resource Actions value', ]);


$resourceActionsArray []= $resourceActionsResourceAction1;
$rolePermissionsRolePermission1->setResourceActions($resourceActionsArray);



$rolePermissionsArray []= $rolePermissionsRolePermission1;
$requestBody->setRolePermissions($rolePermissionsArray);


$requestBody->setIsBuiltIn(true);



$result = $graphServiceClient->deviceManagement()->roleDefinitions()->post($requestBody);


```