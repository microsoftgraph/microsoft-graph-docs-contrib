---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedRoleEligibilityScheduleRequest;
use Microsoft\Graph\Generated\Models\UnifiedRoleScheduleRequestActions;
use Microsoft\Graph\Generated\Models\RequestSchedule;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\ExpirationPatternType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleEligibilityScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('adminAssign'));
$requestBody->setJustification('Assign User Admin eligibility to IT Helpdesk (User) group');
$requestBody->setRoleDefinitionId('fe930be7-5e62-47db-91af-98c3a49a38b1');
$requestBody->setDirectoryScopeId('/');
$requestBody->setPrincipalId('1189bbdd-1268-4a72-8c6d-6fe77d28f2e3');
$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new \DateTime('2025-03-21T11:06:00Z'));
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setEndDateTime(new \DateTime('2026-03-21T00:00:00Z'));
$scheduleInfoExpiration->setType(new ExpirationPatternType('afterDateTime'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$requestBody->setScheduleInfo($scheduleInfo);

$result = $graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->post($requestBody)->wait();

```