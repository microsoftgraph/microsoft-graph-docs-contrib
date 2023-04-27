---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignmentScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('adminassign'));

$requestBody->setJustification('Assign Groups Admin to IT Helpdesk group');

$requestBody->setRoleDefinitionId('fdd7a751-b60b-444a-984c-02652fe8fa1c');

$requestBody->setDirectoryScopeId('/');

$requestBody->setPrincipalId('071cc716-8147-4397-a5ba-b2105951cc0b');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2022-04-10T00:00:00Z'));

$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('noexpiration'));


$scheduleInfo->setExpiration($scheduleInfoExpiration);

$requestBody->setScheduleInfo($scheduleInfo);


$result = $graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequests()->post($requestBody);


```