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
$queryParameters->search = "{query}";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->get($requestConfiguration)->wait();

```