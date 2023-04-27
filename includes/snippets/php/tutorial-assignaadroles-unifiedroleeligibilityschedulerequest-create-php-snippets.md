---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleEligibilityScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('adminassign'));

$requestBody->setJustification('Assign User Admin eligibility to IT Helpdesk (User) group');

$requestBody->setRoleDefinitionId('fe930be7-5e62-47db-91af-98c3a49a38b1');

$requestBody->setDirectoryScopeId('/');

$requestBody->setPrincipalId('e77cbb23-0ff2-4e18-819c-690f58269752');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2021-07-01T00:00:00Z'));

$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setEndDateTime(new DateTime('2022-06-30T00:00:00Z'));

$scheduleInfoExpiration->setType(new ExpirationPatternType('afterdatetime'));


$scheduleInfo->setExpiration($scheduleInfoExpiration);

$requestBody->setScheduleInfo($scheduleInfo);


$result = $graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->post($requestBody);


```