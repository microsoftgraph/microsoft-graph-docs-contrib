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
$queryParameters->orderby = ["deletedDateTime asc"];
$queryParameters->select = ["id","displayName","deletedDateTime"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->deletedItems()->graphGroup()->get($requestConfiguration)->wait();

```