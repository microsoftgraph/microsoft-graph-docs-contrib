---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleEligibilityScheduleRequest();
$requestBody->setAction('AdminRemove');

$requestBody->setJustification('Assign User Admin eligibility to IT Helpdesk (User) group');

$requestBody->setRoleDefinitionId('fdd7a751-b60b-444a-984c-02652fe8fa1c');

$requestBody->setDirectoryScopeId('/');

$requestBody->setPrincipalId('07706ff1-46c7-4847-ae33-3003830675a1');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2021-07-26T18:08:06.2081758Z'));

$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setEndDateTime(new DateTime('2022-06-30T00:00:00Z'));

$scheduleInfoExpiration->setType(new ExpirationPatternType('afterdatetime'));


$scheduleInfo->setExpiration($scheduleInfoExpiration);

$requestBody->setScheduleInfo($scheduleInfo);


$result = $graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->post($requestBody);


```