---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\ServicePrincipals\ServicePrincipalsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServicePrincipalsRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = ServicePrincipalsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "startswith(displayName, 'a')";
$queryParameters->count = true;
$queryParameters->top = 1;
$queryParameters->orderby = ["displayName"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->servicePrincipals()->get($requestConfiguration)->wait();

```