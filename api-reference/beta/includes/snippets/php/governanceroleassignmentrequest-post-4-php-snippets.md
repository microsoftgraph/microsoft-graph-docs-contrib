---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GovernanceRoleAssignmentRequest();
$requestBody->setRoleDefinitionId('65bb4622-61f5-4f25-9d75-d0e20cf92019');

$requestBody->setResourceId('e5e7d29d-5465-45ac-885f-4716a5ee74b5');

$requestBody->setSubjectId('74765671-9ca4-40d7-9e36-2f4a570608a6');

$requestBody->setAssignmentState('Eligible');

$requestBody->setType('AdminRemove');



$result = $graphServiceClient->privilegedAccessById('privilegedAccess-id')->roleAssignmentRequests()->post($requestBody);


```