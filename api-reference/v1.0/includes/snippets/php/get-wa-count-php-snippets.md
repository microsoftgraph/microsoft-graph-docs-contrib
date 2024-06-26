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
$queryParameters->search = "\"displayName:wa\"";
$queryParameters->orderby = ["displayName"];
$queryParameters->count = true;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->get($requestConfiguration)->wait();

```