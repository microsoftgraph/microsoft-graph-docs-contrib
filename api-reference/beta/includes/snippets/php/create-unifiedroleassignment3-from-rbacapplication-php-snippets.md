---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignment();
$requestBody->setPrincipalId('679a9213-c497-48a4-830a-8d3d25d94ddc');

$requestBody->setRoleDefinitionId('ae79f266-94d4-4dab-b730-feca7e132178');

$requestBody->setAppScopeId('/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997');



$result = $graphServiceClient->roleManagement()->entitlementManagement()->roleAssignments()->post($requestBody);


```