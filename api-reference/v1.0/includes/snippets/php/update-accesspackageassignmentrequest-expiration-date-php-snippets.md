---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageRequestType;
use Microsoft\Graph\Generated\Models\EntitlementManagementSchedule;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\ExpirationPatternType;
use Microsoft\Graph\Generated\Models\AccessPackageAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setOdataType('#microsoft.graph.accessPackageAssignmentRequest');
$requestBody->setRequestType(new AccessPackageRequestType('adminUpdate'));
$schedule = new EntitlementManagementSchedule();
$schedule->setStartDateTime(new \DateTime('2023-05-23T20:04:02.39Z'));
$schedule->setRecurrence(null);
$scheduleExpiration = new ExpirationPattern();
$scheduleExpiration->setEndDateTime(new \DateTime('2024-07-01T00:00:00.00Z'));
$scheduleExpiration->setDuration(null);
$scheduleExpiration->setType(new ExpirationPatternType('afterDateTime'));
$schedule->setExpiration($scheduleExpiration);
$requestBody->setSchedule($schedule);
$assignment = new AccessPackageAssignment();
$assignment->setId('329f8dac-8062-4c1b-a9b8-39b7132f9bff');
$requestBody->setAssignment($assignment);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```