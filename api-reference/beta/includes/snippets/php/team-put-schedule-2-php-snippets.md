---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Schedule;
use Microsoft\Graph\Beta\Generated\Models\OperationStatus;
use Microsoft\Graph\Beta\Generated\Models\DayOfWeek;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Schedule();
$requestBody->setEnabled(true);
$requestBody->setTimeZone('America/Chicago');
$requestBody->setProvisionStatus(new OperationStatus('completed'));
$requestBody->setProvisionStatusCode(null);
$requestBody->setOpenShiftsEnabled(true);
$requestBody->setSwapShiftsRequestsEnabled(true);
$requestBody->setOfferShiftRequestsEnabled(true);
$requestBody->setTimeOffRequestsEnabled(true);
$requestBody->setStartDayOfWeek(new DayOfWeek('tuesday'));
$requestBody->setIsActivitiesIncludedWhenCopyingShiftsEnabled(true);
$requestBody->setIsCrossLocationShiftsEnabled(true);
$requestBody->setIsCrossLocationShiftRequestApprovalRequired(true);
$requestBody->setTimeClockEnabled(true);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->put($requestBody)->wait();

```