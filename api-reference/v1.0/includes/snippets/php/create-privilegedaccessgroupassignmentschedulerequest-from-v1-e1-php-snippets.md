---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrivilegedAccessGroupAssignmentScheduleRequest();
$requestBody->setAccessId(new PrivilegedAccessGroupRelationships('member'));
$requestBody->setPrincipalId('3cce9d87-3986-4f19-8335-7ed075408ca2');
$requestBody->setGroupId('68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7');
$requestBody->setAction(new ScheduleRequestActions('adminAssign'));
$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new \DateTime('2022-12-08T07:43:00.000Z'));
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('afterDuration'));
$scheduleInfoExpiration->setDuration(new \DateInterval('PT2H'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$requestBody->setScheduleInfo($scheduleInfo);
$requestBody->setJustification('Assign active member access.');

$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->assignmentScheduleRequests()->post($requestBody)->wait();

```