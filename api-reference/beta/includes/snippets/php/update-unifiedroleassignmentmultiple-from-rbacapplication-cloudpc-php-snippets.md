---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleAssignmentMultiple();
$requestBody->setDisplayName('NewName');
$requestBody->setDescription('A new roleAssignment');

$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignments()->byUnifiedRoleAssignmentMultipleId('unifiedRoleAssignmentMultiple-id')->patch($requestBody)->wait();

```