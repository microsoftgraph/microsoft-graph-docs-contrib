---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'odata.maxpagesize=2',
	];
$requestConfiguration->headers = $headers;

$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->deltatoken = "R0usmcMDNGg0J1E";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->calendarView()->delta()->get($requestConfiguration)->wait();

```