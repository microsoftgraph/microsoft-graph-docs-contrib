---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'return=minimal',
	];
$requestConfiguration->headers = $headers;

$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isof('microsoft.graph.user') or isof('microsoft.graph.group')";
$queryParameters->select = ["microsoft.graph.user/surname","microsoft.graph.group/displayName"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directoryObjects()->delta()->get($requestConfiguration)->wait();

```