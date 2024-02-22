---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GraphGroupRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = GraphGroupRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$queryParameters->orderby = ["displayName"];
$queryParameters->filter = "startswith(displayName, 'a')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->devices()->byDeviceId('device-id')->transitiveMemberOf()->graphGroup()->get($requestConfiguration)->wait();

```