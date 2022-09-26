---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SchedulePutRequestBody();
$additionalData = [
'enabled' => true,
'timeZone' => 'America/Chicago', 
'provisionStatus' => 'Completed', 
'provisionStatusCode' => 		null,
'openShiftsEnabled' => true,
'swapShiftsRequestsEnabled' => true,
'offerShiftRequestsEnabled' => true,
'timeOffRequestsEnabled' => true,
'timeClockEnabled' => true,
'timeClockSettings' => $requestBody = new TimeClockSettings();
$approvedLocation = new ApprovedLocation();
		$approvedLocation->setAltitude(1024.13);

		$approvedLocation->setLatitude(26.13246);

		$approvedLocation->setLongitude(24.34616);


$requestBody->setApprovedLocation($approvedLocation);

$requestBody->setTimeClockSettings($timeClockSettings);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->teamsById('team-id')->schedule()->put($requestBody);


```