---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedRoleAssignmentMultiple;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleAssignmentMultiple();
$requestBody->setOdataType('#microsoft.graph.unifiedRoleAssignmentMultiple');
$requestBody->setDisplayName('My test role assignment 1');
$requestBody->setRoleDefinitionId('c2cf284d-6c41-4e6b-afac-4b80928c9034');
$requestBody->setPrincipalIds(['f8ca5a85-489a-49a0-b555-0a6d81e56f0d', 'c1518aa9-4da5-4c84-a902-a31404023890', 	]);
$requestBody->setAppScopeIds(['allDevices', 	]);

$result = $graphServiceClient->roleManagement()->deviceManagement()->roleAssignments()->post($requestBody)->wait();

```