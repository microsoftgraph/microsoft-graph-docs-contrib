---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PrivilegedAccessGroupEligibilityScheduleRequest;
use Microsoft\Graph\Beta\Generated\Models\PrivilegedAccessGroupRelationships;
use Microsoft\Graph\Beta\Generated\Models\ScheduleRequestActions;
use Microsoft\Graph\Beta\Generated\Models\RequestSchedule;
use Microsoft\Graph\Beta\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Beta\Generated\Models\ExpirationPatternType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrivilegedAccessGroupEligibilityScheduleRequest();
$requestBody->setAccessId(new PrivilegedAccessGroupRelationships('member'));
$requestBody->setPrincipalId('3cce9d87-3986-4f19-8335-7ed075408ca2');
$requestBody->setGroupId('2b5ed229-4072-478d-9504-a047ebd4b07d');
$requestBody->setAction(new ScheduleRequestActions('adminAssign'));
$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new \DateTime('2023-02-06T19:25:00.000Z'));
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setType(new ExpirationPatternType('afterDateTime'));
$scheduleInfoExpiration->setEndDateTime(new \DateTime('2023-02-07T19:56:00.000Z'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$requestBody->setScheduleInfo($scheduleInfo);
$requestBody->setJustification('Assign eligible request.');

$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleRequests()->post($requestBody)->wait();

```