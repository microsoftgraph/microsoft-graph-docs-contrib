---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OutlookTask();
$dueDateTime = new DateTimeTimeZone();
$dueDateTime->setDateTime('2016-05-06T16:00:00');

$dueDateTime->setTimeZone('Eastern Standard Time');


$requestBody->setDueDateTime($dueDateTime);

$requestConfiguration = new OutlookTaskRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Eastern Standard Time"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->outlook()->tasksById('outlookTask-id')->patch($requestBody, $requestConfiguration);


```