---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrivilegedAccessGroupAssignmentScheduleRequest();
$requestBody->setAccessId(new PrivilegedAccessGroupRelationships('member'));
$requestBody->setPrincipalId('3cce9d87-3986-4f19-8335-7ed075408ca2');
$requestBody->setGroupId('2b5ed229-4072-478d-9504-a047ebd4b07d');
$requestBody->setAction(new ScheduleRequestActions('selfActivate'));
$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new \DateTime('2023-02-08T07:43:00.000Z'));
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('afterDuration'));
$scheduleInfoExpiration->setDuration(new \DateInterval('PT2H'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$requestBody->setScheduleInfo($scheduleInfo);
$requestBody->setJustification('Activate assignment.');

$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->assignmentScheduleRequests()->post($requestBody)->wait();

```