---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignment();
$requestBody->set@odatatype('#microsoft.graph.unifiedRoleAssignment');

$requestBody->setRoleDefinitionId('58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d');

$requestBody->setPrincipalId('f8ca5a85-489a-49a0-b555-0a6d81e56f0d');

$requestBody->setDirectoryScopeId('/attributeSets/Engineering');



$result = $graphServiceClient->roleManagement()->directory()->roleAssignments()->post($requestBody);


```