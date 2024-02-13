---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EventItemRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Pacific Standard Time"',
	];
$requestConfiguration->headers = $headers;

$queryParameters = EventItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["subject","body","bodyPreview","organizer","attendees","start","end","location","hideAttendees"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->events()->byEventId('event-id')->get($requestConfiguration)->wait();

```