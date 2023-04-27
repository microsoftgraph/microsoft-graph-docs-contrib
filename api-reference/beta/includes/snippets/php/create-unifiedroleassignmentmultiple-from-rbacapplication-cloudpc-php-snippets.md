---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignmentMultiple();
$requestBody->set@odatatype('#microsoft.graph.unifiedRoleAssignmentMultiple');

$requestBody->setDisplayName('My test role assignment 1');

$requestBody->setDescription('My role assignment description');

$requestBody->setRoleDefinitionId('b5c08161-a7af-481c-ace2-a20a69a48fb1');

$requestBody->setPrincipalIds(['f8ca5a85-489a-49a0-b555-0a6d81e56f0d', 'c1518aa9-4da5-4c84-a902-a31404023890', ]);



$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignments()->post($requestBody);


```