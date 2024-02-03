---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AuthorizationSystemsRequestBuilderGetRequestConfiguration();
$queryParameters = AuthorizationSystemsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "authorizationSystemType eq 'aws'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->external()->authorizationSystems()->get($requestConfiguration)->wait();

```