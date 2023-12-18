---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GraphGroupRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = GraphGroupRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$queryParameters->orderby = ["displayName"];
$queryParameters->filter = "startswith(displayName, 'A')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->devices()->byDeviceId('device-id')->memberOf()->graphGroup()->get($requestConfiguration)->wait();

```