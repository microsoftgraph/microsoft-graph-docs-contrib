---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignment();
$requestBody->setPrincipalId('/ServicePrincipals/0451dbb9-6336-42ea-b58f-5953dc053ece');

$requestBody->setRoleDefinitionId('f66ab1ee-3cac-4d03-8a64-dadc56e563f8');

$requestBody->setDirectoryScopeId('/AdministrativeUnits/8b532c7a-4d3e-4e99-8ffa-2dfec92c62eb');

$requestBody->setAppScopeId(null);



$result = $graphServiceClient->roleManagement()->exchange()->roleAssignments()->post($requestBody);


```