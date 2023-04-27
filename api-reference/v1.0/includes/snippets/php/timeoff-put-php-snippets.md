---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TimesOff();
$additionalData = [
		'userId' => 'c5d0c76b-80c4-481c-be50-923cd8d680a1', 
		'sharedTimeOff' => $requestBody = new SharedTimeOff();
$		requestBody->setTimeOffReasonId('TOR_891045ca-b5d2-406b-aa06-a3c8921245d7');

$		requestBody->setStartDateTime('2019-03-11T07:00:00Z');

$		requestBody->setEndDateTime('2019-03-12T07:00:00Z');

$		requestBody->setTheme('white');


$requestBody->setSharedTimeOff($sharedTimeOff);

		'draftTimeOff' => $requestBody = new DraftTimeOff();
$		requestBody->setTimeOffReasonId('TOR_891045ca-b5d2-406b-aa06-a3c8921245d7');

$		requestBody->setStartDateTime('2019-03-11T07:00:00Z');

$		requestBody->setEndDateTime('2019-03-12T07:00:00Z');

$		requestBody->setTheme('pink');


$requestBody->setDraftTimeOff($draftTimeOff);

];
$requestBody->setAdditionalData($additionalData);



$requestConfiguration = new TimeOffRequestBuilderPutRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->teamsById('team-id')->schedule()->timesOffById('timeOff-id')->put($requestBody, $requestConfiguration);


```