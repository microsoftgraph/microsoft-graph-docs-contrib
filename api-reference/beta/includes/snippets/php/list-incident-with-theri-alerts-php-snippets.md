---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new IncidentsRequestBuilderGetRequestConfiguration();
$queryParameters = IncidentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["alerts"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->incidents()->get($requestConfiguration)->wait();

```