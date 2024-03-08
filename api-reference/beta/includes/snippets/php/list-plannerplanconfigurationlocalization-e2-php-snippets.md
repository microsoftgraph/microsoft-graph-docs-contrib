---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new LocalizationsRequestBuilderGetRequestConfiguration();
$queryParameters = LocalizationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "languageTag eq 'en-us'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->planConfiguration()->localizations()->get($requestConfiguration)->wait();

```