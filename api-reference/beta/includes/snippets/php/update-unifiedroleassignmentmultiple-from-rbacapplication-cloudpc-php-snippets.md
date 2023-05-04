---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignmentMultiple();
$requestBody->setDisplayName('NewName');

$requestBody->setDescription('A new roleAssignment');



$result = $graphServiceClient->roleManagement()->cloudPC()->roleAssignmentsById('unifiedRoleAssignmentMultiple-id')->patch($requestBody);


```