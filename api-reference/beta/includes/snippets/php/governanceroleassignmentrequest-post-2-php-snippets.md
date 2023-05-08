---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GovernanceRoleAssignmentRequest();
$requestBody->setRoleDefinitionId('8b4d1d51-08e9-4254-b0a6-b16177aae376');

$requestBody->setResourceId('e5e7d29d-5465-45ac-885f-4716a5ee74b5');

$requestBody->setSubjectId('918e54be-12c4-4f4c-a6d3-2ee0e3661c51');

$requestBody->setAssignmentState('Active');

$requestBody->setType('UserAdd');

$requestBody->setReason('Activate the owner role');

$schedule = new GovernanceSchedule();
$schedule->setType('Once');

$schedule->setStartDateTime(new DateTime('2018-05-12T23:28:43.537Z'));

$schedule->setDuration(new \DateInterval('PT9H'));


$requestBody->setSchedule($schedule);
$requestBody->setLinkedEligibleRoleAssignmentId('e327f4be-42a0-47a2-8579-0a39b025b394');



$result = $graphServiceClient->privilegedAccessById('privilegedAccess-id')->roleAssignmentRequests()->post($requestBody);


```