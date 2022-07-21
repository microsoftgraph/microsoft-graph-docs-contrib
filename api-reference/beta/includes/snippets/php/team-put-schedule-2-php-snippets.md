---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SchedulePostRequestBody();
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
'timeClockSettings' => $requestBody = new ();
$approvedLocation = new ();
		$approvedLocation->setAltitude(altitude);

		$approvedLocation->setLatitude(latitude);

		$approvedLocation->setLongitude(longitude);


$requestBody->setApprovedLocation($approvedLocation);

$requestBody->setTimeClockSettings($timeClockSettings);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->teamsById('team-id')->schedule()->put($requestBody);


```