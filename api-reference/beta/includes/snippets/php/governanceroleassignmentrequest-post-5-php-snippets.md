---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GovernanceRoleAssignmentRequest();
$requestBody->setRoleDefinitionId('70521f3e-3b95-4e51-b4d2-a2f485b02103');

$requestBody->setResourceId('e5e7d29d-5465-45ac-885f-4716a5ee74b5');

$requestBody->setSubjectId('1566d11d-d2b6-444a-a8de-28698682c445');

$requestBody->setAssignmentState('Eligible');

$requestBody->setType('AdminUpdate');

$schedule = new GovernanceSchedule();
$schedule->setType('Once');

$schedule->setStartDateTime(new DateTime('2018-03-08T05:42:45.317Z'));

$schedule->setEndDateTime(new DateTime('2018-06-05T05:42:31.000Z'));


$requestBody->setSchedule($schedule);


$result = $graphServiceClient->privilegedAccessById('privilegedAccess-id')->roleAssignmentRequests()->post($requestBody);


```