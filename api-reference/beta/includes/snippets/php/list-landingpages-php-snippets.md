---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\AttackSimulation\LandingPages\LandingPagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new LandingPagesRequestBuilderGetRequestConfiguration();
$queryParameters = LandingPagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "source eq 'tenant'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->attackSimulation()->landingPages()->get($requestConfiguration)->wait();

```