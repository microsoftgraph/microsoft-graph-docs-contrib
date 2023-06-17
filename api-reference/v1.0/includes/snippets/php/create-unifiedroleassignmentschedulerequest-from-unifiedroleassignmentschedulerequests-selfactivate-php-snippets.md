---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignmentScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('selfactivate'));

$requestBody->setPrincipalId('071cc716-8147-4397-a5ba-b2105951cc0b');

$requestBody->setRoleDefinitionId('8424c6f0-a189-499e-bbd0-26c1753c96d4');

$requestBody->setDirectoryScopeId('/');

$requestBody->setJustification('I need access to the Attribute Administrator role to manage attributes to be assigned to restricted AUs');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2022-04-14T00:00:00.000Z'));

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