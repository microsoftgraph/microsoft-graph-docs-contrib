---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GovernanceRoleAssignmentRequest();
$requestBody->setRoleDefinitionId('0e88fd18-50f5-4ee1-9104-01c3ed910065');

$requestBody->setResourceId('e5e7d29d-5465-45ac-885f-4716a5ee74b5');

$requestBody->setSubjectId('74765671-9ca4-40d7-9e36-2f4a570608a6');

$requestBody->setAssignmentState('Eligible');

$requestBody->setType('AdminExtend');

$requestBody->setReason('extend role assignment');

$schedule = new GovernanceSchedule();
$schedule->setType('Once');

$schedule->setStartDateTime(new DateTime('2018-05-12T23:53:55.327Z'));

$schedule->setEndDateTime(new DateTime('2018-08-10T23:53:55.327Z'));


$requestBody->setSchedule($schedule);


$result = $graphServiceClient->privilegedAccessById('privilegedAccess-id')->roleAssignmentRequests()->post($requestBody);


```