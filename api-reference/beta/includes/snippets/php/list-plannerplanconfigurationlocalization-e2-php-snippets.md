---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BusinessScenarios\Item\Planner\PlanConfiguration\Localizations\LocalizationsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new LocalizationsRequestBuilderGetRequestConfiguration();
$queryParameters = LocalizationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "languageTag eq 'en-us'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->planConfiguration()->localizations()->get($requestConfiguration)->wait();

```