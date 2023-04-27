---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignmentScheduleRequest();
$requestBody->setAction('SelfActivate');

$requestBody->setPrincipalId('c6ad1942-4afa-47f8-8d48-afb5d8d69d2f');

$requestBody->setRoleDefinitionId('9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3');

$requestBody->setDirectoryScopeId('/');

$requestBody->setJustification('Need to update app roles for selected apps.');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2021-08-17T17:40:00.000Z'));

$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('afterduration'));

$scheduleInfoExpiration->setDuration(new \DateInterval('PT5H'));


$scheduleInfo->setExpiration($scheduleInfoExpiration);

$requestBody->setScheduleInfo($scheduleInfo);
$ticketInfo = new TicketInfo();
$ticketInfo->setTicketNumber('CONTOSO:Normal-67890');

$ticketInfo->setTicketSystem('MS Project');


$requestBody->setTicketInfo($ticketInfo);


$result = $graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequests()->post($requestBody);


```