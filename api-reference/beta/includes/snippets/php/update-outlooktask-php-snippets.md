---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTask();
$dueDateTime = new DateTimeTimeZone();
$dueDateTime->setDateTime('2016-05-06T16:00:00');
$dueDateTime->setTimeZone('Eastern Standard Time');
$requestBody->setDueDateTime($dueDateTime);
$requestConfiguration = new OutlookTaskItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Eastern Standard Time"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->outlook()->tasks()->byOutlookTaskId('outlookTask-id')->patch($requestBody, $requestConfiguration)->wait();

```