---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Beta\Generated\Models\RequestSchedule;
use Microsoft\Graph\Beta\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Beta\Generated\Models\ExpirationPatternType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setOdataType('#microsoft.graph.accessPackageAssignmentRequest');
$requestBody->setRequestType('adminUpdate');
$schedule = new RequestSchedule();
$schedule->setStartDateTime(new \DateTime('2023-05-23T20:04:02.39Z'));
$schedule->setRecurrence(null);
$scheduleExpiration = new ExpirationPattern();
$scheduleExpiration->setEndDateTime(new \DateTime('2024-07-01T00:00:00.00Z'));
$scheduleExpiration->setDuration(null);
$scheduleExpiration->setType(new ExpirationPatternType('afterDateTime'));
$schedule->setExpiration($scheduleExpiration);
$requestBody->setSchedule($schedule);
$additionalData = [
	'assignment' => [
		'id' => '329f8dac-8062-4c1b-a9b8-39b7132f9bff',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```