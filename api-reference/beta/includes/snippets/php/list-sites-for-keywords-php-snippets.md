---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\SitesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SitesRequestBuilderGetRequestConfiguration();
$queryParameters = SitesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["siteCollection","webUrl"];
$queryParameters->filter = "siteCollection/root ne null";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->get($requestConfiguration)->wait();

```