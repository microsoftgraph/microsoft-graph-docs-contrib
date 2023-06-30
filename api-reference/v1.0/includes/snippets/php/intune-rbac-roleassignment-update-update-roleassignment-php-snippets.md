---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RoleAssignment();
$requestBody->set@odatatype('#microsoft.graph.roleAssignment');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setResourceScopes(['Resource Scopes value', ]);



$result = $graphServiceClient->deviceManagement()->roleDefinitions()->byRoleDefinitionId('roleDefinition-id')->roleAssignments()->byRoleAssignmentId('roleAssignment-id')->patch($requestBody);


```