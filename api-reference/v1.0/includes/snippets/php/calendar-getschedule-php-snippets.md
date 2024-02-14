---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetSchedulePostRequestBody();
$requestBody->setSchedules(['adelev@contoso.com', 'meganb@contoso.com', 	]);
$startTime = new DateTimeTimeZone();
$startTime->setDateTime('2019-03-15T09:00:00');
$startTime->setTimeZone('Pacific Standard Time');
$requestBody->setStartTime($startTime);
$endTime = new DateTimeTimeZone();
$endTime->setDateTime('2019-03-15T18:00:00');
$endTime->setTimeZone('Pacific Standard Time');
$requestBody->setEndTime($endTime);
$requestBody->setAvailabilityViewInterval(60);
$requestConfiguration = new GetScheduleRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Pacific Standard Time"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->calendar()->getSchedule()->post($requestBody, $requestConfiguration)->wait();

```