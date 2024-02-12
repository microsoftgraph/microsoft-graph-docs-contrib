---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new LandingPagesRequestBuilderGetRequestConfiguration();
$queryParameters = LandingPagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "source eq 'tenant'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->attackSimulation()->landingPages()->get($requestConfiguration)->wait();

```