---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GraphUserRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = GraphUserRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$queryParameters->orderby = ["displayName"];
$queryParameters->search = "\"displayName:Pr\"";
$queryParameters->select = ["displayName","id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groups()->byGroupId('group-id')->members()->graphUser()->get($requestConfiguration)->wait();

```