---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignment();
$requestBody->set@odatatype('#microsoft.graph.unifiedRoleAssignment');

$requestBody->setRoleDefinitionId('c2cf284d-6c41-4e6b-afac-4b80928c9034');

$requestBody->setPrincipalId('f8ca5a85-489a-49a0-b555-0a6d81e56f0d');

$requestBody->setDirectoryScopeId('/');



$result = $graphServiceClient->roleManagement()->directory()->roleAssignments()->post($requestBody);


```