---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Events\EventsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EventsRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.timezone="Pacific Standard Time"',
	];
$requestConfiguration->headers = $headers;

$queryParameters = EventsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["subject","body","bodyPreview","organizer","attendees","start","end","location"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->events()->get($requestConfiguration)->wait();

```