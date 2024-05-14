---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Outlook\Tasks\TasksRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Generated\Models\OutlookTask;
use Microsoft\Graph\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTask();
$requestBody->setSubject('Shop for children\'s weekend');
$startDateTime = new DateTimeTimeZone();
$startDateTime->setDateTime('2016-05-03T09:00:00');
$startDateTime->setTimeZone('Eastern Standard Time');
$requestBody->setStartDateTime($startDateTime);
$dueDateTime = new DateTimeTimeZone();
$dueDateTime->setDateTime('2016-05-05T16:00:00');
$dueDateTime->setTimeZone('Eastern Standard Time');
$requestBody->setDueDateTime($dueDateTime);
$requestConfiguration = new TasksRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Pacific Standard Time"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->outlook()->tasks()->post($requestBody, $requestConfiguration)->wait();

```