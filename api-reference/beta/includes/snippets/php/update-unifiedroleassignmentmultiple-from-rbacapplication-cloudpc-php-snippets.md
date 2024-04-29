---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedRoleAssignmentMultiple;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleAssignmentMultiple();
$requestBody->setDisplayName('NewName');
$requestBody->setDescription('A new roleAssignment');

$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignments()->byUnifiedRoleAssignmentMultipleId('unifiedRoleAssignmentMultiple-id')->patch($requestBody)->wait();

```