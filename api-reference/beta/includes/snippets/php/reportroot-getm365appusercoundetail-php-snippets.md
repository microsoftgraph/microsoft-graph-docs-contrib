---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetM365AppUserDetailWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetM365AppUserDetailWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getM365AppUserDetailWithPeriod('{period}', )->get($requestConfiguration)->wait();

```