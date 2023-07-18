---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleAssignmentMultiple();
$requestBody->setPrincipalIds(['0aeec2c1-fee7-4e02-b534-6f920d25b300', '2d5386a7-732f-44db-9cf8-f82dd2a1c0e0', 	]);



$result = $graphServiceClient->roleManagement()->deviceManagement()->roleAssignments()->byUnifiedRoleAssignmentMultipleId('unifiedRoleAssignmentMultiple-id')->patch($requestBody);


```