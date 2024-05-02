---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Sites\GetAllSites\GetAllSitesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllSitesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllSitesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->skiptoken = "U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->getAllSites()->get($requestConfiguration)->wait();

```