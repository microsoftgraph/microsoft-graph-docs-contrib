---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignmentScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('selfactivate'));

$requestBody->setPrincipalId('7146daa8-1b4b-4a66-b2f7-cf593d03c8d2');

$requestBody->setRoleDefinitionId('fe930be7-5e62-47db-91af-98c3a49a38b1');

$requestBody->setDirectoryScopeId('/');

$requestBody->setJustification('Need to invalidate all app refresh tokens for Contoso users.');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2021-09-04T15:13:00.000Z'));

$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('afterduration'));

$scheduleInfoExpiration->setDuration(new \DateInterval('PT5H'));


$scheduleInfo->setExpiration($scheduleInfoExpiration);

$requestBody->setScheduleInfo($scheduleInfo);
$ticketInfo = new TicketInfo();
$ticketInfo->setTicketNumber('CONTOSO:Security-012345');

$ticketInfo->setTicketSystem('Contoso ICM');


$requestBody->setTicketInfo($ticketInfo);


$result = $graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequests()->post($requestBody);


```