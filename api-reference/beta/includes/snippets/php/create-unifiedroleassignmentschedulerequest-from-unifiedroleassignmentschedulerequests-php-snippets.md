---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleAssignmentScheduleRequest();
$requestBody->setAction('AdminAssign');

$requestBody->setJustification('Assign User Admin to IT Helpdesk (User) group');

$requestBody->setRoleDefinitionId('fdd7a751-b60b-444a-984c-02652fe8fa1c');

$requestBody->setDirectoryScopeId('/');

$requestBody->setPrincipalId('07706ff1-46c7-4847-ae33-3003830675a1');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2021-07-01T00:00:00Z'));

$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('noexpiration'));


$scheduleInfo->setExpiration($scheduleInfoExpiration);

$requestBody->setScheduleInfo($scheduleInfo);


$result = $graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequests()->post($requestBody);


```