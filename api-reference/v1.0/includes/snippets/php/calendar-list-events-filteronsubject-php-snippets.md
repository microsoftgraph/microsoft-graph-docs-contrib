---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EventsRequestBuilderGetRequestConfiguration();
$queryParameters = EventsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "startsWith(subject,'All')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->calendar()->events()->get($requestConfiguration)->wait();

```