---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UnifiedRoleAssignmentMultiple;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleAssignmentMultiple();
$requestBody->setOdataType('#microsoft.graph.unifiedRoleAssignmentMultiple');
$requestBody->setDisplayName('Example role assignment');
$requestBody->setRoleDefinitionId('b5c08161-a7af-481c-ace2-a20a69a48fb1');
$requestBody->setPrincipalIds(['8e811502-ebda-4782-8f81-071d17f0f892', '30e3492f-964c-4d73-88c6-986a53c6e2a0', 	]);
$requestBody->setAppScopeIds(['Mdc', '/CloudSet/123', 	]);

$result = $graphServiceClient->roleManagement()->defender()->roleAssignments()->post($requestBody)->wait();

```