---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Sites\SitesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SitesRequestBuilderGetRequestConfiguration();
$queryParameters = SitesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->search = "{query}";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->get($requestConfiguration)->wait();

```