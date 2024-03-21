---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SitesRequestBuilderGetRequestConfiguration();
$queryParameters = SitesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->search = "{query}";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->get($requestConfiguration)->wait();

```