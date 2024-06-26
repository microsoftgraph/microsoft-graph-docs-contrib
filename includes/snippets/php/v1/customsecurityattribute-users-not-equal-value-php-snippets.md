---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\UsersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UsersRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = UsersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$queryParameters->select = ["id","displayName","customSecurityAttributes"];
$queryParameters->filter = "customSecurityAttributes/Marketing/AppCountry ne 'Canada'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->get($requestConfiguration)->wait();

```