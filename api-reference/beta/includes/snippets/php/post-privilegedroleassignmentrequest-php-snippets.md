---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrivilegedRoleAssignmentRequest();
$requestBody->setDuration('2');

$requestBody->setReason('Activate the role for business purpose');

$requestBody->setTicketNumber('234');

$requestBody->setTicketSystem('system');

$schedule = new GovernanceSchedule();
$schedule->setStartDateTime(new DateTime('2018-02-08T02:35:17.903Z'));


$requestBody->setSchedule($schedule);
$requestBody->setType('UserAdd');

$requestBody->setAssignmentState('Active');

$requestBody->setRoleId('88d8e3e3-8f55-4a1e-953a-9b9898b8876b');



$result = $graphServiceClient->privilegedRoleAssignmentRequests()->post($requestBody);


```