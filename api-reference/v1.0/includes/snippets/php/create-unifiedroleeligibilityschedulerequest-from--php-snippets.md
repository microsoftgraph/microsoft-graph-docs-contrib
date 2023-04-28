---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleEligibilityScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('adminassign'));

$requestBody->setJustification('Assign Attribute Assignment Admin eligibility to restricted user');

$requestBody->setRoleDefinitionId('8424c6f0-a189-499e-bbd0-26c1753c96d4');

$requestBody->setDirectoryScopeId('/');

$requestBody->setPrincipalId('071cc716-8147-4397-a5ba-b2105951cc0b');

$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new DateTime('2022-04-10T00:00:00Z'));

$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('afterdatetime'));

$scheduleInfoExpiration->setEndDateTime(new DateTime('2024-04-10T00:00:00Z'));


$scheduleInfo->setExpiration($scheduleInfoExpiration);

$requestBody->setScheduleInfo($scheduleInfo);


$result = $graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->post($requestBody);


```